program StreamWriterReader;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
  System.SysUtils,
{$ELSE}
  SysUtils,
{$IFEND }
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Console;

var
  StreamWriter : IStreamWriter;
  StreamReader : IStreamReader;
  Line : WideString;

begin
  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('======================================');
  TConsole.NClass.WriteLine('This program demonstrated how to Create, Write and Read from a file.');
  TConsole.NClass.WriteLine;
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
        TConsole.NClass.WriteLine(StreamReader.ReadLine);
      end;
      StreamReader.Close;
    finally
      StreamReader.Dispose;
      StreamReader := nil;
    end;
  except
    on E: Exception do
      TConsole.NClass.WriteLine('Exception : {0}', StreamReader.ReadLine);
  end;
  TConsole.NClass.ReadKey;
end.

