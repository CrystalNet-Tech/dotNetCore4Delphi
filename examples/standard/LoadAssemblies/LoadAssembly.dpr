program LoadAssembly;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IFDEF FPC}
  SysUtils,
{$ELSE}
  {$IF CompilerVersion > 22}
    System.SysUtils,
  {$ELSE}
    SysUtils,
  {$IFEND }
{$ENDIF}
  Examples in 'Examples.pas',
  uConsole in '..\Shared\uConsole.pas';

begin
  TConsole.WriteLine('Hello! Welcome to .Net Core for Delphi Demo.');
  TConsole.WriteLine('==================================================');
  TConsole.WriteLine('The program demonstrate how to use TCoreClrAssembly to Load .Net Core Assemblies');
  TConsole.WriteLine;

  try
    TAssemblyLoadDemo.LoadAssemblyFromFile;
    TAssemblyLoadDemo.LoadAssemblyByAssemblyString;
    TAssemblyLoadDemo.LoadAssemblyByFilePath;
    TAssemblyLoadDemo.LoadAssemblyError;
  except
    on E:Exception do
      TConsole.WriteLine('Exception : {0}', E.Message);
  end;
  TConsole.ReadKey;
end.

