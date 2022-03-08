unit Hashtable;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr, Collection;

type

{$IFNDEF FPC}
  [TYpeMapping('Hashtable.THashtable', 'System.Collections.Hashtable')]
{$ENDIF}
  IHashtable = interface(ICoreClrObject)
  ['{1D0E1BFE-3CB0-40A5-BE6F-1BDC79BB5FCC}']
    function Get_Count: Integer;
    function Get_Item(Key: Variant): Variant;
    procedure Set_Item(Key: Variant; Value : Variant);
    function Get_Keys: IICollection;

    procedure Add(Key, Value: Variant);

    property Keys: IICollection read Get_Keys;
    property Count: Integer read Get_Count;
    property Item[Key: Variant]: Variant read Get_Item write Set_Item; default;
  end;

  THashtable = class(TCoreClrObject, IHashtable)
  private
    function Get_Count: Integer;
    function Get_Item(Key: Variant): Variant;
    procedure Set_Item(Key: Variant; Value : Variant);
    function Get_Keys: IICollection;
 public
    constructor Create;

    procedure Add(Key, Value: Variant);

    property Keys: IICollection read Get_Keys;
    property Count: Integer read Get_Count;
    property Item[Key: Variant]: Variant read Get_Item write Set_Item; default;
  end;



implementation

{ THashtable }

procedure THashtable.Add(Key, Value: Variant);
begin
  InvokeMethod('Add', ['System.Object', 'System.Object'], [Key, Value]);
end;

constructor THashtable.Create;
begin
  inherited Create('System.Collections.Hashtable', nil);
end;

function THashtable.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function THashtable.Get_Item(Key: Variant): Variant;
begin
  Result := GetPropertyValue('Item', ['System.Object'], [Key]);
end;

function THashtable.Get_Keys: IICollection;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TICollection, GetPropertyValue('Keys')) as TICollection;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TICollection>(GetPropertyValue('Keys'));
{$ENDIF}
end;

procedure THashtable.Set_Item(Key, Value: Variant);
begin
  SetPropertyValue('Item', ['System.Object'], [Key], Value);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IHashtable), TypeInfo(THashtable), 'System.Collections.Hashtable');
finalization

{$ENDIF}

end.
