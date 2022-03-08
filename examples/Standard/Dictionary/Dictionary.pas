unit Dictionary;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type

// Interfaces

  IKeyValuePair<TKey, TValue> = interface(ICoreClrObject)
  ['{B90057FD-49D7-45C4-BBB2-F2EFCF300CC1}']
    function Get_Key: TKey;
    function Get_Value: TValue;

    property Key: TKey read Get_Key;
    property Value: TValue read Get_Value;
  end;

  IDictionaryEnumerator<TKey, TValue> = interface(ICoreClrObject)
  ['{1AD70A1E-3EE5-42BD-B962-CF168A7EB8B4}']
    function GetCurrent: IKeyValuePair<TKey, TValue>;
    function MoveNext: Boolean;
    property Current: IKeyValuePair<TKey, TValue> read GetCurrent;
  end;

  IDictionaryEnumerator<T> = interface(ICoreClrObject)
  ['{94564233-B152-4597-BBB8-9CA15D42FAA6}']
    function GetCurrent: T;
    function MoveNext: Boolean;
    property Current: T read GetCurrent;
  end;

  IDictionaryEnumerable<T> = interface(ICoreClrObject)
  ['{94564233-B152-4597-BBB8-9CA15D42FAA6}']
    function GetEnumerator: IDictionaryEnumerator<T>;
  end;

{$IFNDEF FPC}
  [TypeMapping('Dictionary.TDictionary<TKey, TValue>', 'System.Collections.Generic.Dictionary`2')]
{$ENDIF}
  IDictionary<TKey, TValue> = interface(ICoreClrObject)
  ['{E1D0B71A-2364-4372-B119-D5999D7B24C5}']
    function Get_Count: Integer;
    function Get_Item(Key: TKey): TValue;
    procedure Set_Item(Key: TKey; Value : TValue);
    function Get_Keys: IDictionaryEnumerable<TKey>;
    function Get_Values: IDictionaryEnumerable<TValue>;

    procedure Add(Key: TKey; Value: TValue);
    function ContainsKey(key: TKey): Boolean;
    function GetEnumerator: IDictionaryEnumerator<TKey, TValue>;
    function Remove(key: TKey): Boolean;
    function TryGetValue(key: TKey; var Value: TValue): Boolean;

    property Keys: IDictionaryEnumerable<TKey> read Get_Keys;
    property Values: IDictionaryEnumerable<TValue> read Get_Values;
    property Count: Integer read Get_Count;
    property Item[Key: TKey]: TValue read Get_Item write Set_Item; default;
  end;

// Classes

  TKeyValuePair<TKey, TValue> = class(TCoreClrGenericObject, IKeyValuePair<TKey, TValue>)
  private
    function Get_Key: TKey;
    function Get_Value: TValue;
  public
    constructor Create(KeyValuePair: Variant);
    property Key: TKey read Get_Key;
    property Value: TValue read Get_Value;
  end;

  TDictionaryEnumerator<TKey, TValue> = class(TCoreClrGenericObject, IDictionaryEnumerator<TKey, TValue>)
  private
    function GetCurrent: IKeyValuePair<TKey, TValue>;
  public
    constructor Create(DictionaryEnumerator: Variant);
    function MoveNext: Boolean;
    property Current: IKeyValuePair<TKey, TValue> read GetCurrent;
  end;

  TDictionaryEnumerator<T> = class(TCoreClrGenericObject, IDictionaryEnumerator<T>)
  private
    function GetCurrent: T;
  public
    constructor Create(DictionaryEnumerator: Variant);
    function MoveNext: Boolean;
    property Current: T read GetCurrent;
  end;

  TDictionaryEnumerable<T> = class(TCoreClrGenericObject, IDictionaryEnumerable<T>)
  public
    constructor Create(DictionaryEnumerable: Variant);
    function GetEnumerator: IDictionaryEnumerator<T>;
  end;

  TDictionary<TKey, TValue> = class(TCoreClrGenericObject, IDictionary<TKey, TValue>)
  private
    function Get_Count: Integer;
    function Get_Item(Key: TKey): TValue;
    procedure Set_Item(Key: TKey; Value : TValue);
    function Get_Keys: IDictionaryEnumerable<TKey>;
    function Get_Values: IDictionaryEnumerable<TValue>;
  public
    constructor Create(); overload;
    constructor Create(capacity: Integer); overload;

    procedure Add(Key: TKey; Value: TValue);
    function ContainsKey(key: TKey): Boolean;
    function GetEnumerator: IDictionaryEnumerator<TKey, TValue>;
    function Remove(key: TKey): Boolean;
    function TryGetValue(key: TKey; var Value: TValue): Boolean;

    property Keys: IDictionaryEnumerable<TKey> read Get_Keys;
    property Values: IDictionaryEnumerable<TValue> read Get_Values;
    property Count: Integer read Get_Count;
    property Item[Key: TKey]: TValue read Get_Item write Set_Item; default;
  end;


implementation

uses CNCoreClrLib.ArrayMgr, TypInfo;

{ TKeyValuePair<TKey, TValue> }

constructor TKeyValuePair<TKey, TValue>.Create(KeyValuePair: Variant);
begin
{$IFDEF FPC}
  inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>(), GetTypeInfo<TValue>()), KeyValuePair);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    inherited Create([GetTypeInfo<TKey>(), GetTypeInfo<TValue>()], KeyValuePair);
  {$ELSE}
    inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>(), GetTypeInfo<TValue>()), KeyValuePair);
  {$IFEND}
{$ENDIF}
end;

function TKeyValuePair<TKey, TValue>.Get_Key: TKey;
begin
  Result := TCNRttiManager.AsVariantType<TKey>(GetPropertyValue('Key'));
end;

function TKeyValuePair<TKey, TValue>.Get_Value: TValue;
begin
  Result := TCNRttiManager.AsVariantType<TValue>(GetPropertyValue('Value'));
end;

{ TDictionaryEnumerator<TKey, TValue> }

constructor TDictionaryEnumerator<TKey, TValue>.Create(
  DictionaryEnumerator: Variant);
begin
{$IFDEF FPC}
  inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>(), GetTypeInfo<TValue>()), DictionaryEnumerator);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    inherited Create([GetTypeInfo<TKey>(), GetTypeInfo<TValue>()], DictionaryEnumerator);
  {$ELSE}
    inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>(), GetTypeInfo<TValue>()), DictionaryEnumerator);
  {$IFEND}
{$ENDIF}
end;

function TDictionaryEnumerator<TKey, TValue>.GetCurrent: IKeyValuePair<TKey, TValue>;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TKeyValuePair<TKey, TValue>, GetPropertyValue('Current')) as TKeyValuePair<TKey, TValue>;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TKeyValuePair<TKey, TValue>>(GetPropertyValue('Current'));
{$ENDIF}
end;

function TDictionaryEnumerator<TKey, TValue>.MoveNext: Boolean;
begin
  Result := InvokeMethod('MoveNext');
end;

{ TDictionaryEnumerator<T> }

constructor TDictionaryEnumerator<T>.Create(DictionaryEnumerator: Variant);
begin
{$IFDEF FPC}
  inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), DictionaryEnumerator);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    inherited Create([GetTypeInfo<T>], DictionaryEnumerator);
  {$ELSE}
    inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), DictionaryEnumerator);
  {$IFEND}
{$ENDIF}
end;

function TDictionaryEnumerator<T>.GetCurrent: T;
begin
  Result := TCNRttiManager.AsVariantType<T>(GetPropertyValue('Current'))
end;

function TDictionaryEnumerator<T>.MoveNext: Boolean;
begin
  Result := InvokeMethod('MoveNext');
end;

{ TDictionaryEnumerable<T> }

constructor TDictionaryEnumerable<T>.Create(DictionaryEnumerable: Variant);
begin
{$IFDEF FPC}
  inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), DictionaryEnumerable);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    inherited Create([GetTypeInfo<T>], DictionaryEnumerable);
  {$ELSE}
    inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<T>), DictionaryEnumerable);
  {$IFEND}
{$ENDIF}
end;

function TDictionaryEnumerable<T>.GetEnumerator: IDictionaryEnumerator<T>;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TDictionaryEnumerator<T>, InvokeMethod('GetEnumerator')) as TDictionaryEnumerator<T>;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TDictionaryEnumerator<T>>(InvokeMethod('GetEnumerator'));
{$ENDIF}
end;

{ TDictionary<TKey, TValue> }

procedure TDictionary<TKey, TValue>.Add(Key: TKey; Value: TValue);
begin
  InvokeMethod('Add', [GetTypeName<TKey>, GetTypeName<TValue>], [ToVariant<TKey>(Key), ToVariant<TValue>(Value)])
end;

function TDictionary<TKey, TValue>.ContainsKey(key: TKey): Boolean;
begin
  Result := InvokeMethod('ContainsKey', [GetTypeName<TKey>], [ToVariant<TKey>(Key)])
end;

constructor TDictionary<TKey, TValue>.Create;
begin
{$IFDEF FPC}
  Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>, GetTypeInfo<TValue>), 'System.Collections.Generic.Dictionary`2',
      TArray<string>.Create(GetTypeName<TKey>, GetTypeName<TValue>), []);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    Inherited Create([GetTypeInfo<TKey>, GetTypeInfo<TValue>], 'System.Collections.Generic.Dictionary`2', [GetTypeName<TKey>, GetTypeName<TValue>], []);
  {$ELSE}
    Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>, GetTypeInfo<TValue>), 'System.Collections.Generic.Dictionary`2', TArray<string>.Create(GetTypeName<TKey>, GetTypeName<TValue>), []);
  {$IFEND}
{$ENDIF}
end;

constructor TDictionary<TKey, TValue>.Create(capacity: Integer);
begin
{$IFDEF FPC}
  Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>, GetTypeInfo<TValue>), 'System.Collections.Generic.Dictionary`2',
      TArray<string>.Create(GetTypeName<TKey>, GetTypeName<TValue>), [capacity]);
{$ELSE}
  {$IF CompilerVersion > 27.0}
    Inherited Create([GetTypeInfo<TKey>, GetTypeInfo<TValue>], 'System.Collections.Generic.Dictionary`2',
      [GetTypeName<TKey>, GetTypeName<TValue>], [capacity]);
  {$ELSE}
    Inherited Create(TArray<PTypeInfo>.Create(GetTypeInfo<TKey>, GetTypeInfo<TValue>), 'System.Collections.Generic.Dictionary`2',
      TArray<string>.Create(GetTypeName<TKey>, GetTypeName<TValue>), [capacity]);
  {$IFEND}
{$ENDIF}
end;

function TDictionary<TKey, TValue>.GetEnumerator: IDictionaryEnumerator<TKey, TValue>;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TDictionaryEnumerator<TKey, TValue>, InvokeMethod('GetEnumerator')) as TDictionaryEnumerator<TKey, TValue>;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TDictionaryEnumerator<TKey, TValue>>(InvokeMethod('GetEnumerator'));
{$ENDIF}
end;

function TDictionary<TKey, TValue>.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function TDictionary<TKey, TValue>.Get_Item(Key: TKey): TValue;
begin
  Result := FromVariant<TValue>(GetPropertyValue('Item', [GetTypeName<TKey>], [ToVariant<TKey>(Key)]));
end;

function TDictionary<TKey, TValue>.Get_Keys: IDictionaryEnumerable<TKey>;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TDictionaryEnumerable<TKey>, GetPropertyValue('Keys')) as TDictionaryEnumerable<TKey>;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TDictionaryEnumerable<TKey>>(GetPropertyValue('Keys'));
{$ENDIF}
end;

function TDictionary<TKey, TValue>.Get_Values: IDictionaryEnumerable<TValue>;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TDictionaryEnumerable<TValue>, GetPropertyValue('Values')) as TDictionaryEnumerable<TValue>;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TDictionaryEnumerable<TValue>>(GetPropertyValue('Values'));
{$ENDIF}
end;

function TDictionary<TKey, TValue>.Remove(key: TKey): Boolean;
begin
  Result := InvokeMethod('Remove', [GetTypeName<TKey>], [ToVariant<TKey>(Key)])
end;

procedure TDictionary<TKey, TValue>.Set_Item(Key: TKey; Value: TValue);
begin
  SetPropertyValue('Item', [GetTypeName<TKey>], [ToVariant<TKey>(Key)], ToVariant<TValue>(Value));
end;

function TDictionary<TKey, TValue>.TryGetValue(key: TKey;
  var Value: TValue): Boolean;
var
  m_parameter: ICoreClrArray;
begin
  m_parameter := TCoreClrArray.Create([ToVariant<TKey>(Key), ToVariant<TValue>(Value)]);
  Result := InvokeMethod('Remove', [GetTypeName<TKey>, GetTypeName<TValue>], m_parameter);
  Value := FromVariant<TValue>(m_parameter[1]);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IDictionary<string, string>), TypeInfo(TDictionary<string, string>),
   'System.Collections.Generic.Dictionary`2');
finalization

{$ENDIF}

end.
