unit ThresholdReachedEventArgs;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TYpeMapping('ThresholdReachedEventArgs.TThresholdReachedEventArgs', 'CounterDemo.ThresholdReachedEventArgs')]
{$ENDIF}
  IThresholdReachedEventArgs = interface(ICoreClrObject)
  ['{27FF22C0-755F-4AED-9D88-6E5D3F227BB2}']
    function Get_Threshold: Boolean;
    function Get_TimeReached: TDateTime;

    property Threshold: Boolean read Get_Threshold;
    property TimeReached: TDateTime read Get_TimeReached;
  end;


  TThresholdReachedEventArgs = class(TCoreClrObject, IThresholdReachedEventArgs)
  private
    function Get_Threshold: Boolean;
    function Get_TimeReached: TDateTime;
  public
    constructor Create(); overload;
    constructor Create(AEventArg: Variant); overload;

    property Threshold: Boolean read Get_Threshold;
    property TimeReached: TDateTime read Get_TimeReached;
  end;



implementation

{ TThresholdReachedEventArgs }

constructor TThresholdReachedEventArgs.Create;
begin
  inherited Create('CounterDemo.ThresholdReachedEventArgs');
end;

constructor TThresholdReachedEventArgs.Create(AEventArg: Variant);
begin
  inherited Create(AEventArg);
end;

function TThresholdReachedEventArgs.Get_Threshold: Boolean;
begin
  Result := GetPropertyValue('Threshold');
end;

function TThresholdReachedEventArgs.Get_TimeReached: TDateTime;
begin
  Result := GetPropertyValue('TimeReached');
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IThresholdReachedEventArgs), TypeInfo(TThresholdReachedEventArgs),
   'CounterDemo.ThresholdReachedEventArgs');
finalization

{$ENDIF}

end.
