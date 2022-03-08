unit GenericArrays;

{$IFDEF FPC}
  {$MODE Delphi}
  {$H+}
{$ENDIF}

interface

uses CNCoreClrLib.ArrayMgr, CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr, CNCoreClrLib.RttiMgr,
   CoreClrTypes;

type
  TGenericArrays = class
  public
    class procedure ConvertGenericArrayToArrayOf; static;
    class procedure CreateGenericArrayOfBoolean; static;
    class procedure CreateGenericArrayOfInt32; static;
    class procedure CreateGenericArrayOfIStringBuilder; static;
    class procedure CreateGenericArrayOfString; static;
    class procedure CreateGenericArrayOfStringBuilder; static;
    class procedure CreateGenericArrayOfVariant; static;
    class procedure CreateArrayOfIStringBuilder; static;
    class procedure CreateArrayOfStringBuilder; static;
  end;

{$IFNDEF FPC}
  [TypeMapping('GenericArrays.TStringBuilder', 'System.Text.StringBuilder')]
{$ENDIF}
  IStringBuilder = Interface(ICoreClrObject)
  ['{B7F77C0F-875C-4C2C-8EED-1624271DAE35}']
    function ToString(): string;
  end;

  { TStringBuilder }

  TStringBuilder = class(TCoreClrObject, IStringBuilder)
  public
    constructor Create(value: string); overload;
{$IFDEF FPC}
    constructor Create(AObjectPtr: NCObject); overload;
{$ENDIF}
    function ToString(): string;
  end;

implementation


uses uConsole, SysUtils, Rtti;

{ TStringBuilder }

constructor TStringBuilder.Create(value: string);
begin
  inherited Create('System.Text.StringBuilder', [value]);
end;

{$IFDEF FPC}
constructor TStringBuilder.Create(AObjectPtr: NCObject);
begin
  inherited Create(AObjectPtr);
end;
{$ENDIF}

function TStringBuilder.ToString(): string;
begin
  Result := InvokeMethod('ToString');
end;

{ TGenericArrays }

class procedure TGenericArrays.CreateArrayOfStringBuilder;
var
  clrArray: ICoreClrArray;
  item: IStringBuilder;
  I: Integer;
begin
  clrArray := TCoreClrArray.CreateInstance<TStringBuilder>(5);
  clrArray[0] := TStringBuilder.Create('Data 1') as IStringBuilder;
  clrArray[1] := TStringBuilder.Create('Data 2') as IStringBuilder;
  clrArray[2] := TStringBuilder.Create('Data 3') as IStringBuilder;
  clrArray[3] := TStringBuilder.Create('Data 4') as IStringBuilder;
  clrArray[4] := TStringBuilder.Create('Data 5') as IStringBuilder;

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
  begin
{$IFDEF FPC}
    item := TCoreClrObject.CreateInstance(TStringBuilder, clrArray[I]) as TStringBuilder;
{$ELSE}
    item := TCoreClrObject.CreateInstance<TStringBuilder>(clrArray[I]);
{$ENDIF}
    TConsole.WriteLine(item.ToString);
  end;
end;

class procedure TGenericArrays.CreateArrayOfIStringBuilder;
var
  clrArray: ICoreClrArray;
  item: IStringBuilder;
  I: Integer;
begin
  clrArray := TCoreClrArray.CreateInstance<IStringBuilder>(5);
  clrArray[0] := TStringBuilder.Create('Data 1') as IStringBuilder;
  clrArray[1] := TStringBuilder.Create('Data 2') as IStringBuilder;
  clrArray[2] := TStringBuilder.Create('Data 3') as IStringBuilder;
  clrArray[3] := TStringBuilder.Create('Data 4') as IStringBuilder;
  clrArray[4] := TStringBuilder.Create('Data 5') as IStringBuilder;

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
  begin
{$IFDEF FPC}
    item := TCoreClrObject.CreateInstance(TStringBuilder, clrArray[I]) as TStringBuilder;
{$ELSE}
    item := TCoreClrObject.CreateInstance<TStringBuilder>(clrArray[I]);
{$ENDIF}
    TConsole.WriteLine(item.ToString);
  end;
end;

class procedure TGenericArrays.CreateGenericArrayOfInt32;
var
  clrArray: ICoreClrGenericArray<Integer>;
  I: Integer;
begin
  clrArray := TCoreClrGenericArray<Integer>.Create([1, 2, 3, 4, 5, 6]);
  clrArray[2] := 30;

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
    TConsole.WriteLine(clrArray[I]);
end;

class procedure TGenericArrays.CreateGenericArrayOfStringBuilder;
var
  clrArray: ICoreClrGenericArray<TStringBuilder>;
  I: Integer;
{$IFDEF FPC}
  item: IStringBuilder;
{$ENDIF}
begin
  clrArray := TCoreClrGenericArray<TStringBuilder>.Create(5);
  clrArray[0] := TStringBuilder.Create('Data 1');
  clrArray[1] := TStringBuilder.Create('Data 2');
  clrArray[2] := TStringBuilder.Create('Data 3');
  clrArray[3] := TStringBuilder.Create('Data 4');
  clrArray[4] := TStringBuilder.Create('Data 5');

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
  begin
{$IFDEF FPC}
    item := TCoreClrObject.CreateInstance(TStringBuilder, clrArray.Get_ItemO(I)) as TStringBuilder;
    TConsole.WriteLine(item.ToString);
{$ELSE}
    TConsole.WriteLine(clrArray[I].ToString);
{$ENDIF}
  end;
end;

class procedure TGenericArrays.CreateGenericArrayOfIStringBuilder;
var
  clrArray: ICoreClrGenericArray<IStringBuilder>;
  I: Integer;
{$IFDEF FPC}
  item: IStringBuilder;
{$ENDIF}
begin
  clrArray := TCoreClrGenericArray<IStringBuilder>.Create(5);
  clrArray[0] := TStringBuilder.Create('Data 1');
  clrArray[1] := TStringBuilder.Create('Data 2');
  clrArray[2] := TStringBuilder.Create('Data 3');
  clrArray[3] := TStringBuilder.Create('Data 4');
  clrArray[4] := TStringBuilder.Create('Data 5');

//  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
  begin
{$IFDEF FPC}
    item := TCoreClrObject.CreateInstance(TStringBuilder, clrArray.Get_ItemO(I)) as TStringBuilder;
    TConsole.WriteLine(item.ToString);
{$ELSE}
    TConsole.WriteLine(clrArray[I].ToString);
{$ENDIF}
  end;
end;

class procedure TGenericArrays.CreateGenericArrayOfBoolean;
var
  clrArray: ICoreClrGenericArray<Boolean>;
  I: Integer;
begin
  clrArray := TCoreClrGenericArray<Boolean>.Create([True, False, True, True]);

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
    TConsole.WriteLine(clrArray[I]);
end;

class procedure TGenericArrays.CreateGenericArrayOfString;
var
  clrArray: ICoreClrGenericArray<String>;
  I: Integer;
begin
  clrArray := TCoreClrGenericArray<String>.Create(5);
  clrArray[0] := 'MyData 1';
  clrArray[1] := 'MyData 2';
  clrArray[2] := 'MyData 3';
  clrArray[3] := 'MyData 4';
  clrArray[4] := 'MyData 5';

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
    TConsole.WriteLine(clrArray[I]);
end;

class procedure TGenericArrays.CreateGenericArrayOfVariant;
var
  clrArray: ICoreClrGenericArray<Variant>;
  I: Integer;
{$IFDEF FPC}
  arguments: TArray<Variant>;
begin
  arguments := [1, 'Data1', Now, 230.786, WideChar('a'), byte(23)];
  clrArray := TCoreClrGenericArray<Variant>.Create(arguments);
{$ELSE}
begin
  clrArray := TCoreClrGenericArray<Variant>.Create([1, 'Data1', Now, 230.786, Char('a'), byte(23)]);
{$ENDIF}

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
    TConsole.WriteLine(clrArray[I]);
end;

class procedure TGenericArrays.ConvertGenericArrayToArrayOf;
var
  clrArray: ICoreClrGenericArray<Double>;
  I: Integer;
begin
  clrArray := TCoreClrGenericArray<Double>.Create([1, 2, 3, 4, 5, 6]);

  TConsole.WriteLine('Type FullName: {0}', clrArray.GetType.FullName);
  for I := 0 to clrArray.Length - 1 do
    TConsole.WriteLine(clrArray[I]);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IStringBuilder), TypeInfo(TStringBuilder), 'System.Text.StringBuilder');
finalization

{$ENDIF}
end.

