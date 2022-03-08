unit Queue;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TypeMapping('Queue.TQueue', 'System.Collections.Queue')]
{$ENDIF}
  IQueue = interface(ICoreClrObject)
  ['{522384D1-4EAC-4E94-80A0-56CE451F0D67}']
    function Get_Count: Integer;

    procedure Enqueue(Value: Variant);
    function Dequeue: Variant;

    property Count: Integer read Get_Count;
  end;

  TQueue = class(TCoreClrObject, IQueue)
  private
    function Get_Count: Integer;
  public
    constructor Create;
    procedure Enqueue(Value: Variant);
    function Dequeue: Variant;

    property Count: Integer read Get_Count;
  end;

implementation

{ TQueue }

constructor TQueue.Create;
begin
  inherited Create('System.Collections.Queue', nil);
end;

function TQueue.Dequeue: Variant;
begin
  Result := InvokeMethod('Dequeue');
end;

procedure TQueue.Enqueue(Value: Variant);
begin
  InvokeMethod('Enqueue', ['System.Object'], [Value]);
end;

function TQueue.Get_Count: Integer;
begin
  Result := GetPropertyValue('Count');
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IQueue), TypeInfo(TQueue), 'System.Collections.Queue');
finalization
{$ENDIF}
end.
