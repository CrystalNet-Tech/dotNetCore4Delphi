unit Enumerator;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface
uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TYpeMapping('Enumerator.TIEnumerator', 'System.Collections.IEnumerable')]
{$ENDIF}
  IIEnumerator = interface(ICoreClrObject)
  ['{82280016-0FFF-4F9E-B3C6-2B51083A9D55}']
    function GetCurrent: Variant;

    function MoveNext: Boolean;

    property Current: Variant read GetCurrent;
  end;

  TIEnumerator = class(TCoreClrObject, IIEnumerator)
  private
    function GetCurrent: Variant;
  public
    constructor Create(AEnumerator: Variant);
    function MoveNext: Boolean;
    property Current: Variant read GetCurrent;
  end;

implementation

{ TIEnumerator }

constructor TIEnumerator.Create(AEnumerator: Variant);
begin
  inherited Create(AEnumerator);
end;

function TIEnumerator.GetCurrent: Variant;
begin
  Result := GetPropertyValue('Current');
end;

function TIEnumerator.MoveNext: Boolean;
begin
  Result := InvokeMethod('MoveNext');
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IIEnumerator), TypeInfo(TIEnumerator), 'System.Collections.IEnumerable');
finalization

{$ENDIF}

end.
