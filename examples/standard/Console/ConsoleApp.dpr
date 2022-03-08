program ConsoleApp;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  CNCoreClrLib.ExceptionMgr,
  uConsole in '..\..\Shared\uConsole.pas',
  Examples in 'Examples.pas';

begin
  try
    TConsoleDemo.Example1;
    TConsoleDemo.Example2;
    TConsoleDemo.Example3;
    TConsoleDemo.Example4;
  except
    on E: ECoreClrException do
    begin
      Writeln(E.ToString);
    end;
    on E: Exception do
    begin
      Writeln(E.Message);
    end;
  end;
end.
