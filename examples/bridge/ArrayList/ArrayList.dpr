program ArrayList;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
	System.SysUtils,
{$ELSE}
	SysUtils,
{$IFEND}
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Console;

var
  AArrayList : IArrayList;
  I : Integer;
begin
  AArrayList := TArrayList.Create;
  AArrayList.Add('Hello');
  AArrayList.Add('World');
  AArrayList.Add('!');

  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('=======================================');
  TConsole.NClass.WriteLine('This program prints out ArrayList values.');
  TConsole.NClass.WriteLine;
  TConsole.NClass.WriteLine('Array List');
  TConsole.NClass.WriteLine('    Count:    {0}', AArrayList.Count);
  TConsole.NClass.WriteLine('    Capacity: {0}', AArrayList.Capacity);
  TConsole.NClass.Write('    Values:');
  TConsole.NClass.WriteLine;
  for I := 0 to AArrayList.Count - 1 do begin
    TConsole.NClass.WriteLine(chr(9) + '   {0}', AArrayList.Item[I]);
  end;
  TConsole.NClass.ReadKey;
end.
