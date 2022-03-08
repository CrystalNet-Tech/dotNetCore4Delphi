unit StreamWriter;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TypeMapping('StreamWriter.TStreamWriter', 'System.IO.StreamWriter')]
{$ENDIF}
  IStreamWriter = interface(ICoreClrObject)
  ['{974D5BCE-CD29-43C6-AE15-3C4CA6D35C11}']
    procedure WriteLine(Value: string);
    procedure Close;
    procedure Dispose;
  end;


  TStreamWriter = class(TCoreClrObject, IStreamWriter)
  public
    constructor Create(Path: string);

    procedure WriteLine(Value: string);
    procedure Close;
    procedure Dispose;
  end;

implementation

{ TStreamWriter }

procedure TStreamWriter.Close;
begin
  InvokeMethod('Close');
end;

constructor TStreamWriter.Create(Path: string);
begin
  inherited Create('System.IO.StreamWriter', [Path]);
end;

procedure TStreamWriter.Dispose;
begin
  InvokeMethod('Dispose');
end;

procedure TStreamWriter.WriteLine(Value: string);
begin
  InvokeMethod('WriteLine', ['System.String'], [Value]);
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IStreamWriter), TypeInfo(TStreamWriter), 'System.IO.StreamWriter');
finalization

{$ENDIF}

end.
