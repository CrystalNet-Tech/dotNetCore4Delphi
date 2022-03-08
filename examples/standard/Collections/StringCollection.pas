unit StringCollection;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type

{$IFNDEF FPC}
  [TYpeMapping('StringCollection.TStringCollection', 'System.Collections.Specialized.StringCollection')]
{$ENDIF}
  IStringCollection = interface(ICoreClrObject)
  ['{5DA386D0-692A-40DC-915C-D8015F2067B4}']
    function Get_Count: Integer;
    function Get_Item(AIndex: Integer): string;
    procedure Set_Item(AIndex: Integer; AValue : string);

    function Add(Value: string): Integer;

    property Count: Integer read Get_Count;
    property Item[AIndex: Integer]: string read Get_Item write Set_Item; default;
  end;


  TStringCollection = class(TCoreClrObject, IStringCollection)
  private
    function Get_Count: Integer;
    function Get_Item(AIndex: Integer): string;
    procedure Set_Item(AIndex: Integer; AValue : string);
  public
    constructor Create;
    function Add(Value: string): Integer;

    property Count: Integer read Get_Count;
    property Item[AIndex: Integer]: string read Get_Item write Set_Item; default;
  end;

implementation

{ TStringCollection }

function TStringCollection.Add(Value: string): Integer;
begin
  Result := InvokeMethod('Add', ['System.String'], [Value]);
end;

constructor TStringCollection.Create;
begin
  inherited Create('System.Collections.Specialized.StringCollection', nil);
end;

function TStringCollection.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function TStringCollection.Get_Item(AIndex: Integer): string;
begin
  Result := GetPropertyValue('Item', AIndex);
end;

procedure TStringCollection.Set_Item(AIndex: Integer; AValue: string);
begin
  SetPropertyValue('Item', AIndex, AValue);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IStringCollection), TypeInfo(TStringCollection), 'System.Collections.Specialized.StringCollection');
finalization
{$ENDIF}

end.
