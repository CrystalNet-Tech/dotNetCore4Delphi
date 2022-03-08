unit Stack;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TypeMapping('Stack.TStack', 'System.Collections.Stack')]
{$ENDIF}
  IStack = interface(ICoreClrObject)
  ['{1145CA92-7412-4F74-8F5E-011E21997B77}']
    function Get_Count: Integer;

    procedure Push(Value: Variant);
    function Pop: Variant;

    property Count: Integer read Get_Count;
  end;


  TStack = class(TCoreClrObject, IStack)
  private
    function Get_Count: Integer;
  public
    constructor Create;
    procedure Push(Value: Variant);
    function Pop: Variant;

    property Count: Integer read Get_Count;
  end;



implementation

{ TStack }

constructor TStack.Create;
begin
  inherited Create('System.Collections.Stack', nil);
end;

function TStack.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

function TStack.Pop: Variant;
begin
  Result := InvokeMethod('Pop');
end;

procedure TStack.Push(Value: Variant);
begin
  InvokeMethod('Push', ['System.Object'], [Value]);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IStack), TypeInfo(TStack), 'System.Collections.Stack');
finalization
{$ENDIF}
end.
