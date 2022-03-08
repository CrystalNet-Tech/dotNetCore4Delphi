unit CreateBaseObject;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr, CoreClrActivatorUtils;

type
  TBaseObjectDemo = class
  public
    class procedure CreateArrayObject; static;
    class procedure CreateBaseObject; static;
    class procedure CreateIntegerObject; static;
  end;

implementation

uses uConsole;

class procedure TBaseObjectDemo.CreateBaseObject;
var
  baseObject: ICoreClrObject;
begin
  baseObject := TCoreClrObject.Create(TCoreClrActivatorUtils.CreateInstance('System.Object'));
  TConsole.WriteLine(baseObject.GetType.FullName);
  TConsole.WriteLine(baseObject.ToString);
end;

class procedure TBaseObjectDemo.CreateIntegerObject;
var
  value: Integer;
  clrObject: ICoreClrObject;
begin
  value := 9878;
  clrObject := TCoreClrObject.Create(value);

  TConsole.WriteLine(clrObject.GetType.FullName);
  TConsole.WriteLine(clrObject.ToString);
end;

class procedure TBaseObjectDemo.CreateArrayObject;
var
  clrObject: ICoreClrObject;
begin
  clrObject := TCoreClrObject.Create(TArray<Integer>.Create(1, 2, 3, 4));

  TConsole.WriteLine(clrObject.GetType.FullName);
  TConsole.WriteLine(clrObject.ToString);
  TConsole.WriteLine(clrObject.IsArray);

  TConsole.WriteLine(clrObject.GetArrayLength);
  TConsole.WriteLine(clrObject.getArrayElement(0));
  TConsole.WriteLine(clrObject.getArrayElement(1));

  clrObject.SetArrayElement(1, 1000);
  TConsole.WriteLine(clrObject.getArrayElement(1));
end;

end.
