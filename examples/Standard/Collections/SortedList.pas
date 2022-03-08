unit SortedList;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr, Collection;

type

{$IFNDEF FPC}
  [TYpeMapping('SortedList.TSortedList', 'System.Collections.SortedList')]
{$ENDIF}
  ISortedList = interface(ICoreClrObject)
  ['{9BF883AF-AC61-43FD-BFBC-A80F5CA8B468}']
    function Get_Count: Integer;
    function Get_Item(Key: Variant): Variant;
    procedure Set_Item(Key: Variant; Value : Variant);
    function Get_Values: IICollection;

    procedure Add(Key, Value: Variant);

    property Values: IICollection read Get_Values;
    property Count: Integer read Get_Count;
    property Item[Key: Variant]: Variant read Get_Item write Set_Item; default;
  end;

  TSortedList = class(TCoreClrObject, ISortedList)
  private
    function Get_Count: Integer;
    function Get_Item(Key: Variant): Variant;
    procedure Set_Item(Key: Variant; Value : Variant);
    function Get_Values: IICollection;
 public
    constructor Create;

    procedure Add(Key, Value: Variant);

    property Values: IICollection read Get_Values;
    property Count: Integer read Get_Count;
    property Item[Key: Variant]: Variant read Get_Item write Set_Item; default;
  end;


implementation

{ TSortedList }

procedure TSortedList.Add(Key, Value: Variant);
begin
  InvokeMethod('Add', ['System.Object', 'System.Object'], [Key, Value]);
end;

constructor TSortedList.Create;
begin
  inherited Create('System.Collections.SortedList', nil);
end;

function TSortedList.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function TSortedList.Get_Item(Key: Variant): Variant;
begin
  Result := GetPropertyValue('Item', ['System.Object'], [Key]);
end;

function TSortedList.Get_Values: IICollection;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TICollection, GetPropertyValue('Values')) as TICollection;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TICollection>(GetPropertyValue('Values'));
{$ENDIF}
end;

procedure TSortedList.Set_Item(Key, Value: Variant);
begin
  SetPropertyValue('Item', ['System.Object'], [Key], Value);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(ISortedList), TypeInfo(TSortedList), 'System.Collections.SortedList');
finalization

{$ENDIF}

end.
