unit Counter;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr,
  ThresholdReachedEventArgs;

type
  TCounter = class;

  TThresholdReached = procedure(Sender: TCounter; EventArgs: TThresholdReachedEventArgs) of object;

{$IFNDEF FPC}
  [TYpeMapping('Counter.TCounter', 'CounterDemo.Counter')]
{$ENDIF}
  ICounter = interface(ICoreClrObject)
  ['{8F9A352C-C401-4E9C-850B-741E3DCBE96B}']
    function Get_ThresholdReached: TThresholdReached;
    procedure Set_ThresholdReached(Value: TThresholdReached);

    procedure Add(x: Integer);

    property ThresholdReached: TThresholdReached read Get_ThresholdReached write Set_ThresholdReached;
  end;


  TCounter = class(TCoreClrObject, ICounter)
  private
    FThresholdReached: TThresholdReached;
    function Get_ThresholdReached: TThresholdReached;
    procedure Set_ThresholdReached(Value: TThresholdReached);
  public
    constructor Create(passedThreshold: Integer);

    procedure Add(x: Integer);

    property ThresholdReached: TThresholdReached read Get_ThresholdReached write Set_ThresholdReached;
  end;




implementation

uses CoreClrTypes, CNCoreClrLib.EventMgr;

{ TCounter }

procedure TCounter.Add(x: Integer);
begin
  InvokeMethod('Add', ['System.Int32'], [x]);
end;

constructor TCounter.Create(passedThreshold: Integer);
begin
{$IFDEF FPC}
  inherited Create('CounterDemo.Counter', TArray<Variant>.Create([passedThreshold]));
{$ELSE}
  inherited Create('CounterDemo.Counter', [passedThreshold]);
{$ENDIF}
end;

function TCounter.Get_ThresholdReached: TThresholdReached;
begin
  Result := FThresholdReached;
end;

procedure ThresholdReachedHandler(sender: NCObject; e: NCEventArgs); {$IFDEF MSWINDOWS}stdcall{$ELSE} cdecl{$ENDIF};
var
	m_evtObject: TCounter;
 	m_evtArg: TThresholdReachedEventArgs;
begin
  m_evtObject := TCoreClrNotifyEvent.GetSource(sender) as TCounter;
{$IFDEF FPC}
  m_evtArg := TCoreClrEventArgs.CreateEventArgs(TThresholdReachedEventArgs, e) as TThresholdReachedEventArgs;
{$ELSE}
  m_evtArg := TCoreClrEventArgs.CreateEventArgs<TThresholdReachedEventArgs>(e);
{$ENDIF}
  try
    if Assigned(m_evtObject) and Assigned(m_evtObject.ThresholdReached) then
    begin
      m_evtObject.ThresholdReached(m_evtObject, m_evtArg);
    end;
  finally
    m_evtArg.Free;
  end;
end;

procedure TCounter.Set_ThresholdReached(Value: TThresholdReached);
var
	evtHandlerPtr : NCPointer;
begin
	evtHandlerPtr := @ThresholdReachedHandler;
	if @Value <> Nil then
  begin
    RegisterEventCallBack('ThresholdReached', evtHandlerPtr);
    RegisterEvent();
  end
	else
    UnRegisterEventCallBack('ThresholdReached', evtHandlerPtr);
	FThresholdReached := Value;
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(ICounter), TypeInfo(TCounter), 'CounterDemo.Counter');
finalization

{$ENDIF}

end.
