unit ObjectArrays;

//{$IFDEF FPC}
//  {$MODE Delphi}
//{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr, CNCoreClrLib.ArrayMgr, CoreClrTypes;

type
  TObjectArrays = class
  public
    class procedure PrintObjectArray1; static;
    class procedure PrintObjectArray2; static;
  end;

  IStringBuilder = Interface(ICoreClrObject)
    function ToString(): string;
  end;

  { TStringBuilder }

  TStringBuilder = class(TCoreClrObject, IStringBuilder)
  public
    constructor Create(value: string); overload;
    function ToString(): string;
  end;


implementation

uses uConsole, SysUtils;

{ TObjectArrays }

class procedure TObjectArrays.PrintObjectArray1;
var
  oArray : ICoreClrObjectArray;
  x: Integer;
{$IFDEF FPC}
 varArray: array of Variant;
begin
  TConsole.WriteLine;
  varArray := [45, Now, 63534.768];
  oArray := TCoreClrObjectArray.Create(TCoreClrObject, varArray);
{$ELSE}
begin
  TConsole.WriteLine;
  oArray := TCoreClrObjectArray.Create(TCoreClrObject, [45, Now, 63534.768]);
{$ENDIF}
  TConsole.WriteLine('Array Information');
  TConsole.WriteLine('       Count:  {0}', oArray.Length);
  TConsole.WriteLine('        Type:  {0}', oArray.GetType.FullName);
  TConsole.WriteLine('Element Type:  {0}', oArray.GetElementType.FullName);
  TConsole.WriteLine('    Values:');

  for x := 0 to oArray.Length - 1 do
  begin
    TConsole.WriteLine(Chr(9)+' {0}', oArray[x].AsVariant);
  end;
end;

class procedure TObjectArrays.PrintObjectArray2;
var
  x : Integer;
  oArray : ICoreClrObjectArray;
begin
  TConsole.WriteLine;
  oArray := TCoreClrObjectArray.Create(TStringBuilder, 5);
  oArray[0] := TStringBuilder.Create('Data 1');
  oArray[1] := TStringBuilder.Create('Data 2');
  oArray[2] := TStringBuilder.Create('Data 3');
  oArray[3] := TStringBuilder.Create('Data 4');
  oArray[4] := TStringBuilder.Create('Data 5');

  for x := 0 to oArray.Length - 1 do
  begin
    TConsole.WriteLine(Chr(9)+' {0}', TStringBuilder{$IFDEF FPC}.Create{$ENDIF}(oArray[x]).ToString);
  end;
end;

{ TStringBuilder }

constructor TStringBuilder.Create(value: string);
begin
  inherited Create('System.Text.StringBuilder', [value]);
end;

function TStringBuilder.ToString(): string;
begin
  Result := InvokeMethod('ToString');
end;

end.
