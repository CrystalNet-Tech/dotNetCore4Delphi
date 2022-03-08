unit SimpleArrays;

//{$IFDEF FPC}
//  {$MODE Delphi}
//{$ENDIF}

interface

uses CNCoreClrLib.ArrayMgr, CNCoreClrLib.Intf;

type
  TSimpleArrays = class
  private
    class procedure DisplayArray(AArray: ICoreClrArray); static;
  public
    class procedure PrintIntArray; static;
    class procedure PrintObjectArray; static;
    class procedure PrintDoubleArray; static;
    class procedure createByteArray; static;
    class procedure CreateInstanceAnsiChar; static;
    class procedure CreateInstanceBoolean; static;
    class procedure CreateInstanceChar; static;
    class procedure createSByteArray; static;
    class procedure IndexOf; static;
    class procedure PrintCharArray; static;
    class procedure PrintDateTimeArray; static;
    class procedure PrintStringArray; static;
  end;

implementation

uses uConsole, SysUtils;

{ TSimpleArrays }

class procedure TSimpleArrays.DisplayArray(AArray: ICoreClrArray);
var
  x : Integer;
begin
  TConsole.WriteLine('Array Information');
  TConsole.WriteLine('       Count:  {0}', AArray.Length);
  TConsole.WriteLine('        Type:  {0}', AArray.GetType.FullName);
  TConsole.WriteLine('Element Type:  {0}', AArray.GetElementType.FullName);
  TConsole.WriteLine('    Values:');

  for x := 0 to AArray.Length - 1 do
  begin
    TConsole.WriteLine(Chr(9)+' {0}', AArray[x]);
  end;
end;

class procedure TSimpleArrays.PrintIntArray;
var
  oArray : ICoreClrArray;
begin
  TConsole.WriteLine;
  oArray := TCoreClrArray.Create('System.Int32', 6);
  oArray[0] := 900;
  oArray[1] := 800;
  oArray[2] := 700;
  oArray[3] := 600;
  oArray[4] := 500;
  oArray[5] := 400;
  DisplayArray(oArray);
end;

class procedure TSimpleArrays.PrintObjectArray;
var
  oArray : ICoreClrArray;
  delphiArray: TArray<Variant>;
begin
  TConsole.WriteLine;
  delphiArray := TArray<Variant>.Create(3546,67, 63534, 900, 99.99, 123.89, 77);
  oArray := TCoreClrArray.Create(delphiArray);

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.PrintDoubleArray;
var
  oArray : ICoreClrArray;
  delphiArray: TArray<Double>;
begin
  TConsole.WriteLine;
  delphiArray := TArray<Double>.Create(3546,67, 63534, 900, 99.99, 123.89, 77);
  oArray := TCoreClrArray.Create(TCoreClrArray.ToNCDoubleArray(delphiArray));

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.PrintDateTimeArray;
var
  oArray : ICoreClrArray;
  delphiArray: TArray<TDateTime>;
begin
  TConsole.WriteLine;
  delphiArray := TArray<TDateTime>.Create(Now, Now, Now, Now, Now, Now, Now);
  oArray := TCoreClrArray.Create(TCoreClrArray.ToNCDateTimeArray(delphiArray));

  DisplayArray(oArray);
end;


class procedure TSimpleArrays.PrintStringArray;
var
  oArray : ICoreClrArray;
  delphiArray: TArray<string>;
begin
  TConsole.WriteLine;
  delphiArray := TArray<string>.Create('Data1', 'Data2', 'Data3', 'Data4', 'Data5');
  oArray := TCoreClrArray.Create(TCoreClrArray.ToNCStringArray(delphiArray));

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.PrintCharArray;
var
  oArray : ICoreClrArray;
{$IFDEF DELPHI_XE_UP}
  delphiArray: TArray<Char>;
begin
  TConsole.WriteLine;
  delphiArray := TArray<Char>.Create('漢', '字', 'A', 'a', '2');
{$ELSE}
{$IFNDEF FPC}
  delphiArray: array[0..4] of Char;
begin
  TConsole.WriteLine;
  delphiArray[0] := '漢';
  delphiArray[1] := '字';
  delphiArray[2] := 'A';
  delphiArray[3] := 'a';
  delphiArray[4] := '2';
{$ELSE}
  delphiArray: array[0..4] of WideChar;
begin
  TConsole.WriteLine;
  delphiArray[0] := 'L';
  delphiArray[1] := 'K';
  delphiArray[2] := 'A';
  delphiArray[3] := 'a';
  delphiArray[4] := '2';
{$ENDIF}
{$ENDIF}
  oArray := TCoreClrArray.Create(TCoreClrArray.ToNCCharArray(delphiArray));

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.createByteArray();
var
  oArray: ICoreClrArray;
begin
  oArray := TCoreClrArray.CreateInstance('System.Byte', 5);
  oArray[0] := 2;
  oArray[1] := 5;
  oArray[2] := 124;
  oArray[3] := 66;
  oArray[4] := 100;

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.createSByteArray();
var
  oArray: ICoreClrArray;
begin
  oArray := TCoreClrArray.Create('System.SByte', 5);
  oArray[0] := -2;
  oArray[1] := -5;
  oArray[2] := 22;
  oArray[3] := 66;
  oArray[4] := -100;

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.IndexOf();
var
  oArray: ICoreClrArray;
{$IFDEF FPC}
  arguments: array of Variant;
begin
  arguments := [20, '34', 90];
  oArray := TCoreClrArray.Create(arguments);
{$ELSE}
begin
  oArray := TCoreClrArray.Create([20, '34', 90]);
{$ENDIF}

  TConsole.WriteLine(oArray.IndexOf(20));
  TConsole.WriteLine(oArray.IndexOf('34'));
  TConsole.WriteLine(oArray.IndexOf(90.1));
end;

class procedure TSimpleArrays.CreateInstanceAnsiChar;
var
  oArray: ICoreClrArray;
begin
  oArray := TCoreClrArray.CreateInstance<AnsiChar>(5);
  oArray[0] := '2';
  oArray[1] := 'a';
  oArray[2] := 't';
  oArray[3] := 'Z';
  oArray[4] := 'g';

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.CreateInstanceBoolean;
var
  oArray: ICoreClrArray;
begin
  oArray := TCoreClrArray.CreateInstance<Boolean>(5);
  oArray[0] := True;
  oArray[1] := False;
  oArray[2] := True;
  oArray[3] := True;
  oArray[4] := True;

  DisplayArray(oArray);
end;

class procedure TSimpleArrays.CreateInstanceChar;
var
  oArray: ICoreClrArray;
begin
  oArray := TCoreClrArray.CreateInstance<Char>(5);
  oArray[0] := '2';
  oArray[1] := 'a';
  oArray[2] := 't';
  oArray[3] := 'Z';
  oArray[4] := '漢';

  DisplayArray(oArray);
end;

end.
