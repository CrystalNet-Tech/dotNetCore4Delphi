program ArrayExample;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
	System.SysUtils,
{$ELSE}
	SysUtils,
{$IFEND}
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Console;


  procedure PrintArrayByTypeName;
  var
    x : Integer;
    oArray : IArray;
  begin
    TConsole.NClass.WriteLine;
    oArray := TArray.NClass.CreateInstance(TType.NCLass.GetType('System.Double'), 6);
    oArray.SetValue(900, 0);
    oArray.SetValue(800, 1);
    oArray.SetValue(700, 2);
    oArray.SetValue(600, 3);
    oArray.SetValue(500, 4);
    oArray.SetValue(400, 5);

    TConsole.NClass.WriteLine('Double Array');
    TConsole.NClass.WriteLine('    Count:    {0}', oArray.Length);
    TConsole.NClass.WriteLine('    Rank:     {0}', oArray.Rank);
    TConsole.NClass.WriteLine('    Values:');

    for x := 0 to oArray.Length - 1 do begin
      TConsole.NClass.WriteLine(Chr(9)+' {0}', oArray.GetValue(x));
    end;
  end;

  procedure PrintArrayByType;
  var
    x : Integer;
    oArray : IArray;
    oType : IType;
  begin
    TConsole.NClass.WriteLine;
    oType := TType.NCLass.GetType('System.Double');
    oArray := TArray.NClass.CreateInstance(oType, 6);
    oArray.SetValue(900, 0);
    oArray.SetValue(800, 1);
    oArray.SetValue(700, 2);
    oArray.SetValue(600, 3);
    oArray.SetValue(500, 4);
    oArray.SetValue(400, 5);

    TConsole.NClass.WriteLine('Double Array');
    TConsole.NClass.WriteLine('    Count:    {0}', oArray.Length);
    TConsole.NClass.WriteLine('    Rank:     {0}', oArray.Rank);
    TConsole.NClass.WriteLine('    Values:');

    for x := 0 to oArray.Length - 1 do begin
      TConsole.NClass.WriteLine(Chr(9)+' {0}', oArray.GetValue(x));
    end;
  end;

  procedure PrintArrayByObjectType;
  var
    x : Integer;
    oArray : IArray;
  begin
    TConsole.NClass.WriteLine;
    oArray := TArray.NClass.CreateInstance(TType.NCLass.GetType('System.Object'), 6);
    oArray.SetValue(900, 0);
    oArray.SetValue(800, 1);
    oArray.SetValue(700, 2);
    oArray.SetValue(600, 3);
    oArray.SetValue(500, 4);
    oArray.SetValue(400, 5);

    TConsole.NClass.WriteLine('Object Array');
    TConsole.NClass.WriteLine('    Count:    {0}', oArray.Length);
    TConsole.NClass.WriteLine('    Rank:     {0}', oArray.Rank);
    TConsole.NClass.WriteLine('    Values:');

    for x := 0 to oArray.Length - 1 do begin
      TConsole.NClass.WriteLine(Chr(9)+' {0}', oArray.GetValue(x));
    end;
  end;

begin
  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('======================================');
  TConsole.NClass.WriteLine('This program prints out Array values.');
  TConsole.NClass.WriteLine;

  PrintArrayByTypeName;
  PrintArrayByType;
  PrintArrayByObjectType;

  TConsole.NClass.ReadKey;
end.
