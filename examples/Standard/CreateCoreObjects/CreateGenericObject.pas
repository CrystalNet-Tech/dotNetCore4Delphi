unit CreateGenericObject;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}


interface
uses CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr, CoreClrTypes, CNCoreClrLib.RttiMgr;

type
  TGenericObjectDemo = class
  private
    class procedure DisplayGenericInfo(GenericObj: TCoreClrObject);
  public
    class procedure CreateGenericListOfInt32; static;
    class procedure CreateGenericListOfString; static;
    class procedure CreateGenericListObjectOfInteger; static;
  end;

  TCoreGenericObject = class(TCoreClrObject)
  public
    constructor Create(AGenericTypeName: string; AGenericTypeNames: array of string; AArguments: array of Variant); overload;
    constructor Create(AGenericTypeName: string; AGenericTypeNames: array of string; AArguments: array of NCObject); overload;
    constructor Create(AGenericTypeName: string; AGenericTypeNames: array of string; AArguments: NCObjectArray); overload;
  end;


{$IFNDEF FPC}
  [TypeMappingAttribute('CreateGenericObject.TList<T>', 'System.Collections.Generic.List`1')]
{$ENDIF}
  IList<T> = Interface(ICoreClrObject)
  ['{59ABBB82-628E-4484-90FB-0809F2D91789}']
  end;

  TList<T> = class(TCoreClrGenericObject, IList<T>)
  public
    constructor Create(); overload;
    constructor Create(capacity: Integer); overload;
  end;


implementation

uses uConsole, TypInfo;


{ TList<T> }

constructor TList<T>.Create(capacity: Integer);
begin
{$IFDEF FPC}
  Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), 'System.Collections.Generic.List`1', [GetTypeName<T>], [capacity]);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    Inherited Create([GetTypeInfo<T>], 'System.Collections.Generic.List`1', [GetTypeName<T>], [capacity]);
  {$ELSE}
    Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), 'System.Collections.Generic.List`1', [GetTypeName<T>], [capacity]);
  {$IFEND}
{$ENDIF}
end;

constructor TList<T>.Create;
begin
{$IFDEF FPC}
  Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), 'System.Collections.Generic.List`1', [GetTypeName<T>], []);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    Inherited Create([GetTypeInfo<T>], 'System.Collections.Generic.List`1', [GetTypeName<T>], []);
  {$ELSE}
    Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), 'System.Collections.Generic.List`1', [GetTypeName<T>], []);
  {$IFEND}
{$ENDIF}
end;


{ TCoreGenericObject }

constructor TCoreGenericObject.Create(AGenericTypeName: string;
  AGenericTypeNames: array of string; AArguments: NCObjectArray);
begin
  inherited Create(AGenericTypeName, AGenericTypeNames, AArguments);
end;

constructor TCoreGenericObject.Create(AGenericTypeName: string;
  AGenericTypeNames: array of string; AArguments: array of NCObject);
begin
  inherited Create(AGenericTypeName, AGenericTypeNames, AArguments);
end;

constructor TCoreGenericObject.Create(AGenericTypeName: string;
  AGenericTypeNames: array of string; AArguments: array of Variant);
begin
  inherited Create(AGenericTypeName, AGenericTypeNames, AArguments);
end;

{ TGenericObjectDemo }

class procedure TGenericObjectDemo.CreateGenericListOfInt32;
var
  genericObject: TCoreGenericObject;
  arguments: TArray<Variant>;
begin
  arguments := TArray<Variant>.Create(10);
  //C# List<int> genericObject = new List<int>(10);
  genericObject := TCoreGenericObject.Create('System.Collections.Generic.List`1', ['System.Int32'], arguments);
  try
    DisplayGenericInfo(genericObject);
  finally
    genericObject.Free;
  end;
end;

class procedure TGenericObjectDemo.CreateGenericListOfString;
var
  genericObject: TCoreGenericObject;
  argument: ICoreClrArray;
begin
  argument := nil;
  //C# List<string> genericObject = new List<string>();
  genericObject := TCoreGenericObject.Create('System.Collections.Generic.List`1', ['System.String'], argument);
  try
    DisplayGenericInfo(genericObject);
  finally
    genericObject.Free;
  end;
end;

class procedure TGenericObjectDemo.DisplayGenericInfo(
  GenericObj: TCoreClrObject);
begin
  TConsole.WriteLine(GenericObj.GetType.FullName);
  TConsole.WriteLine(GenericObj.IsGeneric);
  TConsole.WriteLine(GenericObj.GetPropertyValue('Capacity'));
end;

class procedure TGenericObjectDemo.CreateGenericListObjectOfInteger;
var
  genericObject: TList<Integer>;
begin
  //C# List<int> genericObject = new List<int>(10);
  genericObject := TList<Integer>.Create(10);
  try
    DisplayGenericInfo(genericObject);
  finally
    genericObject.Free;
  end;
end;


end.
