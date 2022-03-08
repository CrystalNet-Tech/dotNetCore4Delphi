unit Collection;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr, Enumerator;

type
{$IFNDEF FPC}
  [TYpeMapping('Collection.TCollection', 'System.Collections.ICollection')]
{$ENDIF}
  IICollection = interface(ICoreClrObject)
  ['{DFAD6285-8B1F-4B8F-B97F-4B35DD751335}']
    function GetEnumerator: IIEnumerator;
  end;


  TICollection = class(TCoreClrObject, IICollection)
  public
    constructor Create(ACollection: Variant);
    function GetEnumerator: IIEnumerator;
  end;


implementation

{ TICollection }

constructor TICollection.Create(ACollection: Variant);
begin
  inherited Create(ACollection);
end;

function TICollection.GetEnumerator: IIEnumerator;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TIEnumerator, InvokeMethod('GetEnumerator')) as TIEnumerator;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TIEnumerator>(InvokeMethod('GetEnumerator'));
{$ENDIF}
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IICollection), TypeInfo(TICollection), 'System.Collections.ICollection');
finalization

{$ENDIF}

end.
