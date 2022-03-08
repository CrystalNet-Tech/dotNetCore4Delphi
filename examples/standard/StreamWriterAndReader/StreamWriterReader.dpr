program StreamWriterReader;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  StreamWriter in 'StreamWriter.pas',
  StreamReader in 'StreamReader.pas',
  uConsole in '..\..\Shared\uConsole.pas';

var
  StreamWriter : IStreamWriter;
  StreamReader : IStreamReader;
  Line : WideString;

begin
  TConsole.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.WriteLine('==================================================');
  TConsole.WriteLine('This program demonstrated how to Create, Write and Read from a file.');
  TConsole.WriteLine;
  try
    StreamWriter := TStreamWriter.Create('HelloWorld.txt');
    try
      StreamWriter.WriteLine('Hello');
      StreamWriter.WriteLine('World');
      StreamWriter.WriteLine('l!');
      StreamWriter.Close;
    finally
      StreamWriter.Dispose;
      StreamWriter := nil;
    end;

    // Read and show each line from the file.
    StreamReader := TStreamReader.Create('HelloWorld.txt');
    try
      Line := '';
      while not StreamReader.EndOfStream do begin
        TConsole.WriteLine(StreamReader.ReadLine);
      end;
      StreamReader.Close;
    finally
      StreamReader.Dispose;
      StreamReader := nil;
    end;
  except
    on E: Exception do
      TConsole.WriteLine('Exception : {0}', E.Message);
  end;
  TConsole.ReadKey;
end.

