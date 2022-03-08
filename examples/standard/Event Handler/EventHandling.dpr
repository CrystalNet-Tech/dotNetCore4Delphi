program EventHandling;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  Variants,
{$IFNDEF FPC}
  IOUtils,
{$ENDIF}
  CNCoreClrLib.AssemblyMgr,
  Counter in 'Counter.pas',
  ThresholdReachedEventArgs in 'ThresholdReachedEventArgs.pas',
  uConsole in '..\..\Shared\uConsole.pas';

// The following example shows a custom event data class named ThresholdReachedEventArgs that
// derives from the EventArgs class. An instance of the event data class is passed to the event
// handler for the ThresholdReached event.

const
  //Note: DotNet Core Project is located in the same directory as this project.
  dotNetCoreCounterDLLPath = '..\..\..\dotNetCore\CounterDemo\bin\Debug\net5.0\CounterDemo.dll';

var
  executingEXEDir: string;
  counterDLLFullPath: string;

  m_counter: ICounter;
  m_passedThreshold: Integer;
  m_thresholdReached: Boolean;

type
  TCounterEvent = class
  public
    class procedure DoThresholdReached(Sender: TCounter; e: TThresholdReachedEventArgs);
  end;

{ TCounterEvent }

class procedure TCounterEvent.DoThresholdReached(Sender: TCounter;
  e: TThresholdReachedEventArgs);
begin
  TConsole.WriteLine('The threshold of {0} was reached at {1}.', e.Threshold,  e.TimeReached);
  m_thresholdReached := True;
end;

begin
  TConsole.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.WriteLine('==================================================');
  TConsole.WriteLine('This program demonstrates how to handle events and callback.');
  TConsole.WriteLine;
  try
    // Load Assembly
  {$IFDEF FPC}
    executingEXEDir := ExtractFileDir(ParamStr(0));
  {$ELSE}
    executingEXEDir := TPath.GetDirectoryName(ParamStr(0));
  {$ENDIF}
    counterDLLFullPath := executingEXEDir + dotNetCoreCounterDLLPath;
    TCoreClrAssembly.LoadFrom(counterDLLFullPath);

    m_passedThreshold := Random(10);
    m_counter := TCounter.Create(m_passedThreshold);
    m_counter.ThresholdReached := TCounterEvent.DoThresholdReached;

    m_thresholdReached := False;
    TConsole.WriteLine('press ''a'' key to increase total');
    while (TConsole.ReadKey(true).KeyChar = 'a') and not m_thresholdReached do
    begin
      TConsole.WriteLine('adding one');
      m_counter.Add(1);
    end;
  except
    on E: Exception do
      TConsole.WriteLine('Exception: {0}', E.Message);
  end;
  TConsole.ReadKey;
end.

