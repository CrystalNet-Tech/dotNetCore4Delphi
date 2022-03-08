unit StreamReader;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.RttiMgr, CNCoreClrLib.ObjectMgr;

type
{$IFNDEF FPC}
  [TypeMapping('StreamReader.TStreamReader', 'System.IO.StreamReader')]
{$ENDIF}
  IStreamReader = interface(ICoreClrObject)
  ['{ACD9CBF9-3B5B-4B81-AE3B-C63059A57376}']
    function GetEndOfStream: Boolean;
    function ReadLine: string;
    procedure Close;
    procedure Dispose;
    property EndOfStream: Boolean read GetEndOfStream;
  end;


  TStreamReader = class(TCoreClrObject, IStreamReader)
  private
    function GetEndOfStream: Boolean;
  public
    constructor Create(Path: string);

    function ReadLine: string;
    procedure Close;
    procedure Dispose;
    property EndOfStream: Boolean read GetEndOfStream;
  end;


implementation

{ TStreamReader }

procedure TStreamReader.Close;
begin
  InvokeMethod('Close');
end;

constructor TStreamReader.Create(Path: string);
begin
  inherited Create('System.IO.StreamReader', [Path]);
end;

procedure TStreamReader.Dispose;
begin
  InvokeMethod('Dispose');
end;

function TStreamReader.GetEndOfStream: Boolean;
begin
  Result := GetPropertyValue('EndOfStream');
end;

function TStreamReader.ReadLine: string;
begin
  Result := InvokeMethod('ReadLine');
end;

{$IFDEF FPC}
initialization
  TRegTypes.RegisterType(TypeInfo(IStreamReader), TypeInfo(TStreamReader), 'System.IO.StreamReader');
finalization

{$ENDIF}

end.
