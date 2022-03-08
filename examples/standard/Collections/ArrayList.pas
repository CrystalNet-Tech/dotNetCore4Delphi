unit ArrayList;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TYpeMapping('ArrayList.TArrayList', 'System.Collections.ArrayList')]
{$ENDIF}
  IArrayList = interface(ICoreClrObject)
  ['{3C0C42DD-133E-4D05-A0F9-0C1B6E77AF5E}']
    function Get_Count: Integer;
    function Get_Capacity: Integer;
    procedure Set_Capacity(AValue: Integer);
    function Get_Item(AIndex: Integer): Variant;
    procedure Set_Item(AIndex: Integer; AValue : Variant);

    function Add(Value: Variant): Integer;

    property Capacity: Integer read Get_Capacity write Set_Capacity;
    property Count: Integer read Get_Count;
    property Item[AIndex: Integer]: Variant read Get_Item write Set_Item; default;
  end;


  TArrayList = class(TCoreClrObject, IArrayList)
  private
    function Get_Count: Integer;
    function Get_Capacity: Integer;
    procedure Set_Capacity(AValue: Integer);
    function Get_Item(AIndex: Integer): Variant;
    procedure Set_Item(AIndex: Integer; AValue : Variant);
  public
    constructor Create;
    function Add(Value: Variant): Integer;

    property Capacity: Integer read Get_Capacity write Set_Capacity;
    property Count: Integer read Get_Count;
    property Item[AIndex: Integer]: Variant read Get_Item write Set_Item; default;
  end;

implementation

{ TArrayList }

function TArrayList.Add(Value: Variant): Integer;
begin
  Result := InvokeMethod('Add', ['System.Object'], [Value]);
end;

constructor TArrayList.Create;
begin
  inherited Create('System.Collections.ArrayList', nil);
end;

function TArrayList.Get_Capacity: Integer;
begin
  Result := GetPropertyValue('Capacity');
end;

function TArrayList.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function TArrayList.Get_Item(AIndex: Integer): Variant;
begin
  Result := GetPropertyValue('Item', AIndex);
end;

procedure TArrayList.Set_Capacity(AValue: Integer);
begin
  SetPropertyValue('Capacity', AValue);
end;

procedure TArrayList.Set_Item(AIndex: Integer; AValue: Variant);
begin
  SetPropertyValue('Item', AIndex, AValue);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IArrayList), TypeInfo(TArrayList), 'System.Collections.ArrayList');
finalization

{$ENDIF}

end.
