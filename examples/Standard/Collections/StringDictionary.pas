unit StringDictionary;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface


uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr, Collection;

type

{$IFNDEF FPC}
  [TYpeMapping('StringDictionary.TStringDictionary', 'System.Collections.Specialized.StringDictionary')]
{$ENDIF}
  IStringDictionary = interface(ICoreClrObject)
  ['{62967537-2D5D-4BDB-9A5E-877DA87131C6}']
    function Get_Count: Integer;
    function Get_Item(Key: string): string;
    procedure Set_Item(Key: string; Value : string);
    function Get_Values: IICollection;

    procedure Add(Key, Value: string);

    property Values: IICollection read Get_Values;
    property Count: Integer read Get_Count;
    property Item[Key: string]: string read Get_Item write Set_Item; default;
  end;


  TStringDictionary = class(TCoreClrObject, IStringDictionary)
  private
    function Get_Count: Integer;
    function Get_Item(Key: string): string;
    procedure Set_Item(Key: string; Value : string);
    function Get_Values: IICollection;
 public
    constructor Create;
    procedure Add(Key, Value: string);

    property Values: IICollection read Get_Values;
    property Count: Integer read Get_Count;
    property Item[Key: string]: string read Get_Item write Set_Item; default;
  end;

implementation

{ TStringDictionary }

procedure TStringDictionary.Add(Key, Value: string);
begin
  InvokeMethod('Add', ['System.String', 'System.String'], [Key, Value]);
end;

constructor TStringDictionary.Create;
begin
  inherited Create('System.Collections.Specialized.StringDictionary', nil);
end;

function TStringDictionary.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function TStringDictionary.Get_Item(Key: string): string;
begin
  Result := GetPropertyValue('Item', ['System.String'], [Key]);
end;

function TStringDictionary.Get_Values: IICollection;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TICollection, GetPropertyValue('Values')) as TICollection;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TICollection>(GetPropertyValue('Values'));
{$ENDIF}
end;

procedure TStringDictionary.Set_Item(Key, Value: string);
begin
  SetPropertyValue('Item', ['System.String'], [Key], Value);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IStringDictionary), TypeInfo(TStringDictionary),
   'System.Collections.Specialized.StringDictionary');
finalization
{$ENDIF}

end.
