program StringBuilder;

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
  AStringBuilder : IStringBuilder;
begin
  AStringBuilder := TStringBuilder.Create;
  AStringBuilder.Append('Hello');
  AStringBuilder.Append('World');
  AStringBuilder.Append('!');

  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('=======================================');
  TConsole.NClass.WriteLine('This program prints out StringBuilder values.');
  TConsole.NClass.WriteLine;
  TConsole.NClass.WriteLine('AStringBuilder');
  TConsole.NClass.WriteLine('    Count:    {0}', AStringBuilder.Length);
  TConsole.NClass.WriteLine('    Capacity: {0}', AStringBuilder.Capacity);
  TConsole.NClass.WriteLine('    Values:   {0}', AStringBuilder.ToString(0, AStringBuilder.Length - 1));
  TConsole.NClass.ReadKey;
end.
