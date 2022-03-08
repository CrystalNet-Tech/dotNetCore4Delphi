program ConsoleApp;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
	System.SysUtils,
{$ELSE}
	SysUtils,
{$IFEND}
  CrystalNet.Console;

begin
  try
    TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
    TConsole.NClass.WriteLine('======================================');
    TConsole.NClass.WriteLine('The program displays the string Hello World!');
    TConsole.NClass.WriteLine;
    TConsole.NClass.WriteLine('Hello World!');
    TConsole.NClass.WriteLine('Press any key to exit.');
    TConsole.NClass.ReadKey;
  except
    on E: Exception do
      Writeln(E.Message);
  end;
end.
