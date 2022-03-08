unit List;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TypeMapping('List.TList<T>', 'System.Collections.Generic.List`1')]
{$ENDIF}
  IList<T> = interface(ICoreClrObject)
  ['{77AE63FD-528B-4E4E-8752-A7C3B654A71B}']
    function Get_Count: Integer;
    function Get_Capacity: Integer;
    procedure Set_Capacity(AValue: Integer);
    function Get_Item(AIndex: Integer): T;
    procedure Set_Item(AIndex: Integer; Value : T);

    procedure Add(item: T);
    function Contains(item: T): Boolean;
    function Remove(item: T): Boolean;
    procedure Insert(index: Integer; item: T);
    procedure TrimExcess;
    procedure Clear;


    property Capacity: Integer read Get_Capacity;
    property Count: Integer read Get_Count;
    property Item[AIndex: Integer]: T read Get_Item write Set_Item; default;
  end;

  TList<T> = class(TCoreClrGenericObject, IList<T>)
  private
    function Get_Count: Integer;
    function Get_Capacity: Integer;
    procedure Set_Capacity(AValue: Integer);
    function Get_Item(AIndex: Integer): T;
    procedure Set_Item(AIndex: Integer; Value : T);
  public
    constructor Create(); overload;
    constructor Create(capacity: Integer); overload;

    procedure Add(item: T);
    function Contains(item: T): Boolean;
    function Remove(item: T): Boolean;
    procedure Insert(index: Integer; item: T);
    procedure TrimExcess;
    procedure Clear;

    property Capacity: Integer read Get_Capacity;
    property Count: Integer read Get_Count;
    property Item[AIndex: Integer]: T read Get_Item write Set_Item; default;
  end;


implementation

uses TypInfo;

{ TList<T> }

procedure TList<T>.Add(Item: T);
begin
  InvokeMethod('Add', [GetTypeName<T>], [ToVariant<T>(Item)])
end;

procedure TList<T>.Clear;
begin
  InvokeMethod('Clear');
end;

function TList<T>.Contains(Item: T): Boolean;
begin
  Result := InvokeMethod('Contains', [GetTypeName<T>], [ToVariant<T>(Item)])
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

function TList<T>.Get_Capacity: Integer;
begin
  Result := GetPropertyValue('Capacity');
end;

function TList<T>.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function TList<T>.Get_Item(AIndex: Integer): T;
begin
  Result := FromVariant<T>(GetPropertyValue('Item', AIndex));
end;

procedure TList<T>.Insert(index: Integer; item: T);
begin
  InvokeMethod('Insert', ['System.Int32', GetTypeName<T>], [index, ToVariant<T>(Item)])
end;

function TList<T>.Remove(Item: T): Boolean;
begin
  Result := InvokeMethod('Remove', [GetTypeName<T>], [ToVariant<T>(Item)])
end;

procedure TList<T>.Set_Capacity(AValue: Integer);
begin
  SetPropertyValue('Capacity', AValue);
end;

procedure TList<T>.Set_Item(AIndex: Integer; Value: T);
begin
  SetPropertyValue('Item', AIndex, ToVariant<T>(Value));
end;

procedure TList<T>.TrimExcess;
begin
  InvokeMethod('TrimExcess');
end;


{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IList<string>), TypeInfo(TList<string>), 'System.Collections.Generic.List`1');
finalization
{$ENDIF}

end.
