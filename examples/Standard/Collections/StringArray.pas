unit StringArray;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.ArrayMgr, CNCoreClrLib.ObjectMgr, Enumerator;

type

  IStringArray = interface(ICoreClrGenericArray<string>)
  ['{28F46654-E38C-4723-86AB-CCB5EF7C90E6}']
    function GetEnumerator: IIEnumerator;
  end;

  TStringArray = class(TCoreClrGenericArray<string>, IStringArray)
  public
    function GetEnumerator: IIEnumerator;
  end;

implementation

{ TStringArray }

function TStringArray.GetEnumerator: IIEnumerator;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TIEnumerator, InvokeMethod('GetEnumerator', [], [])) as TIEnumerator;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TIEnumerator>(InvokeMethod('GetEnumerator', [], []));
{$ENDIF}
end;

end.

