unit uConsole;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr;

type
  TConsoleKey = (X = 88);

  IConsoleKeyInfo = interface(ICoreClrObject)
  ['{34FB30FB-0CBC-42FD-A26B-F2944255B03F}']
    function Get_Key: Integer;//TConsoleKey;
    function Get_KeyChar: Char;

    property Key: Integer read Get_Key;
    property KeyChar: Char read Get_KeyChar;
  end;

  TConsoleKeyInfo = class(TCoreClrObject, IConsoleKeyInfo)
  private
    function Get_Key: Integer;
    function Get_KeyChar: Char;
  public
    property Key: Integer read Get_Key;
    property KeyChar: Char read Get_KeyChar;
  end;

  TConsoleSpecialKey = (
    ControlC = 0,
    ControlBreak=1
    );

  TConsoleCancelEventArgs = class(TCoreClrObject)
  private
    function GetCancel: Boolean;
    procedure SetCancel(Value: Boolean);
    function GetSpecialKey: TConsoleSpecialKey;
    procedure SetSpecialKey(Value: TConsoleSpecialKey);
  public

    property Cancel: Boolean read GetCancel write SetCancel;
    property SpecialKey: TConsoleSpecialKey read GetSpecialKey write SetSpecialKey;
  end;

  TConsoleCancelEventHandler = procedure(sender: TCoreClrObject; e: TConsoleCancelEventArgs) of object;

  //Represents the standard input, output, and error streams for console applications.
  TConsole = class
  private
    class var FConsole: TCoreClrStaticObject;
    class var FCancelKeyPress: TConsoleCancelEventHandler;

    class procedure SetCancelKeyPress(AValue: TConsoleCancelEventHandler); static;

    class function GetBufferHeight: Integer; static;
    class procedure SetBufferHeight(AValue: Integer); static;

    class function GetBufferWidth: Integer; static;
    class procedure SetBufferWidth(AValue: Integer); static;

    class function GetCursorLeft: Integer; static;
    class procedure SetCursorLeft(AValue: Integer); static;

    class function GetCursorSize: Integer; static;
    class procedure SetCursorSize(AValue: Integer); static;

    class function GetCursorTop: Integer; static;
    class procedure SetCursorTop(AValue: Integer); static;

    class function GetCursorVisible: Boolean; static;
    class procedure SetCursorVisible(AValue: Boolean); static;

    class function GetWindowWidth: Integer; static;
    class procedure SetWindowWidth(AValue: Integer); static;

    class function GetTitle: string; static;
    class procedure SetTitle(AValue: string); static;

    class function GetWindowHeight: Integer; static;
    class procedure SetWindowHeight(AValue: Integer); static;

    class function GetWindowLeft: Integer; static;
    class procedure SetWindowLeft(AValue: Integer); static;

    class function GetWindowTop: Integer;  static;
    class procedure SetWindowTop(AValue: Integer); static;

    class function GetConsole: TCoreClrStaticObject; static;
  public
    class constructor Create;
    class destructor Destroy;

    class procedure Beep(); overload;
    class procedure Beep(frequency, duration: Integer); overload;
    class procedure Clear();
    class procedure MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop: Integer);
    class procedure SetBufferSize(width, height: Integer);
    class procedure SetCursorPosition(left, top: Integer);
    class procedure SetWindowPosition(left, top: Integer);
    class procedure SetWindowSize(width, height: Integer);
    class procedure Write(value: Variant); overload;
    class procedure Write(value: string); overload;
    class procedure Write(format: string; arg: TArray<Variant>); overload;
    class procedure WriteLine(format: string; arg: array of Variant); overload;
    class procedure WriteLine(format: string; arg0: Variant); overload;
    class procedure WriteLine(format: string; arg0, arg1: Variant); overload;
    class procedure WriteLine(); overload;
    class procedure WriteLine(value: Variant); overload;
    class procedure WriteLine(value: string); overload;
    class procedure ResetColor();
    class function Read(): Integer;
    class function ReadKey(intercept: Boolean): IConsoleKeyInfo; overload;
    class function ReadKey(): IConsoleKeyInfo; overload;
    class function ReadLine(): string;

    class property BufferHeight: Integer read GetBufferHeight write SetBufferHeight;
    class property BufferWidth: Integer read GetBufferWidth write SetBufferWidth;
    class property CursorLeft: Integer read GetCursorLeft write SetCursorLeft;
    class property CursorSize: Integer read GetCursorSize write SetCursorSize;
    class property CursorTop: Integer read GetCursorTop write SetCursorTop;
    class property CursorVisible: Boolean read GetCursorVisible write SetCursorVisible;
    class property WindowWidth: Integer read GetWindowWidth write SetWindowWidth;
    class property Title: string read GetTitle write SetTitle;
    class property WindowHeight: Integer read GetWindowHeight write SetWindowHeight;
    class property WindowLeft: Integer read GetWindowLeft write SetWindowLeft;
    class property WindowTop: Integer read GetWindowTop write SetWindowTop;

    class property CancelKeyPress: TConsoleCancelEventHandler read FCancelKeyPress write SetCancelKeyPress;
  end;


implementation

uses CoreClrTypes, CNCoreClrLib.EventMgr, SysUtils, Variants, CNCoreClrLib.Helpers;

{ TConsole }

class procedure TConsole.Beep(frequency, duration: Integer);
begin
  GetConsole.InvokeMethod('Beep', ['System.Int32', 'System.Int32'], [frequency, duration]);
end;

class procedure TConsole.Beep;
begin
  GetConsole.InvokeMethod('Beep');
end;

class procedure TConsole.Clear;
begin
  GetConsole.InvokeMethod('Clear');
end;

class constructor TConsole.Create;
begin
  FConsole := nil;
end;

class destructor TConsole.Destroy;
begin
  if FConsole <> nil then
    FConsole.Free;
end;

class function TConsole.GetBufferHeight: Integer;
begin
  Result := GetConsole.GetPropertyValue('BufferHeight');
end;

class function TConsole.GetBufferWidth: Integer;
begin
  Result := GetConsole.GetPropertyValue('BufferWidth');
end;

class function TConsole.GetConsole: TCoreClrStaticObject;
begin
  if FConsole = nil then
    FConsole := TCoreClrStaticObject.Create('System.Console');
  Result := FConsole;
end;

class function TConsole.GetCursorLeft: Integer;
begin
  Result := GetConsole.GetPropertyValue('CursorLeft');
end;

class function TConsole.GetCursorSize: Integer;
begin
  Result := GetConsole.GetPropertyValue('CursorSize');
end;

class function TConsole.GetCursorTop: Integer;
begin
  Result := GetConsole.GetPropertyValue('CursorTop');
end;

class function TConsole.GetCursorVisible: Boolean;
begin
  Result := GetConsole.GetPropertyValue('CursorVisible');
end;

class function TConsole.GetTitle: string;
begin
  Result := GetConsole.GetPropertyValue('Title');
end;

class function TConsole.GetWindowHeight: Integer;
begin
  Result := GetConsole.GetPropertyValue('WindowHeight');
end;

class function TConsole.GetWindowLeft: Integer;
begin
  Result := GetConsole.GetPropertyValue('WindowLeft');
end;

class function TConsole.GetWindowTop: Integer;
begin
  Result := GetConsole.GetPropertyValue('WindowTop');
end;

class function TConsole.GetWindowWidth: Integer;
begin
  Result := GetConsole.GetPropertyValue('WindowWidth');
end;

class procedure TConsole.MoveBufferArea(sourceLeft, sourceTop, sourceWidth,
  sourceHeight, targetLeft, targetTop: Integer);
begin
  GetConsole.InvokeMethod('MoveBufferArea', ['System.Int32', 'System.Int32', 'System.Int32', 'System.Int32', 'System.Int32', 'System.Int32'],
    [sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop]);
end;

class function TConsole.Read: Integer;
begin
  Result := GetConsole.InvokeMethod('Read');
end;

class function TConsole.ReadKey: IConsoleKeyInfo;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TConsoleKeyInfo, GetConsole.InvokeMethod('ReadKey')) as TConsoleKeyInfo;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TConsoleKeyInfo>(GetConsole.InvokeMethod('ReadKey'));
{$ENDIF}
end;

class function TConsole.ReadKey(intercept: Boolean): IConsoleKeyInfo;
begin
{$IFDEF FPC}
  Result := TCoreClrObject.CreateInstance(TConsoleKeyInfo, GetConsole.InvokeMethod('ReadKey', ['System.Boolean'], [intercept])) as TConsoleKeyInfo;
{$ELSE}
  Result := TCoreClrObject.CreateInstance<TConsoleKeyInfo>(GetConsole.InvokeMethod('ReadKey', ['System.Boolean'], [intercept]));
{$ENDIF}
end;

class function TConsole.ReadLine: string;
begin
  Result := GetConsole.InvokeMethod('ReadLine');
end;

class procedure TConsole.ResetColor;
begin
  GetConsole.InvokeMethod('ResetColor');
end;

class procedure TConsole.SetBufferHeight(AValue: Integer);
begin
  GetConsole.SetPropertyValue('BufferHeight', AValue);
end;

class procedure TConsole.SetBufferSize(width, height: Integer);
begin
  GetConsole.InvokeMethod('SetBufferSize', ['System.Int32', 'System.Int32'], [width, height]);
end;

class procedure TConsole.SetBufferWidth(AValue: Integer);
begin
  GetConsole.SetPropertyValue('BufferWidth', AValue);
end;

procedure ConsoleCancelEventHandler(sender: NCObject; e: NCEventArgs); {$IFDEF MSWINDOWS}stdcall{$ELSE} cdecl{$ENDIF};
var
	m_evtObject: TCoreClrStaticObject;
 	m_evtArg: TConsoleCancelEventArgs;
begin
  m_evtObject := TCoreClrNotifyEvent.GetSource(sender) as TCoreClrStaticObject;
{$IFDEF FPC}
  m_evtArg := TCoreClrEventArgs.CreateEventArgs(TConsoleCancelEventArgs, e) as TConsoleCancelEventArgs;
{$ELSE}
  m_evtArg := TCoreClrEventArgs.CreateEventArgs<TConsoleCancelEventArgs>(e);
{$ENDIF}
  try
    if Assigned(m_evtObject) and Assigned(TConsole.FCancelKeyPress) then
    begin
      TConsole.FCancelKeyPress(m_evtObject, m_evtArg);
    end;
  finally
    m_evtArg.Free;
  end;
end;

class procedure TConsole.SetCancelKeyPress(AValue: TConsoleCancelEventHandler);
var
	evtHandlerPtr : NCPointer;
begin
	evtHandlerPtr := @ConsoleCancelEventHandler;
	if @AValue <> Nil then
  begin
    GetConsole.RegisterEventCallBack('CancelKeyPress', evtHandlerPtr);
    TCoreClrNotifyEvent.Register(GetConsole);
  end
	else
    GetConsole.UnRegisterEventCallBack('CancelKeyPress', evtHandlerPtr);
	FCancelKeyPress := AValue;
end;

class procedure TConsole.SetCursorLeft(AValue: Integer);
begin
  GetConsole.SetPropertyValue('CursorLeft', AValue);
end;

class procedure TConsole.SetCursorPosition(left, top: Integer);
begin
  GetConsole.InvokeMethod('SetCursorPosition', ['System.Int32', 'System.Int32'], [left, top]);
end;

class procedure TConsole.SetCursorSize(AValue: Integer);
begin
  GetConsole.SetPropertyValue('CursorSize', AValue);
end;

class procedure TConsole.SetCursorTop(AValue: Integer);
begin
  GetConsole.SetPropertyValue('CursorTop', AValue);
end;

class procedure TConsole.SetCursorVisible(AValue: Boolean);
begin
  GetConsole.SetPropertyValue('CursorVisible', AValue);
end;

class procedure TConsole.SetTitle(AValue: string);
begin
  GetConsole.SetPropertyValue('Title', AValue);
end;

class procedure TConsole.SetWindowHeight(AValue: Integer);
begin
  GetConsole.SetPropertyValue('WindowHeight', AValue);
end;

class procedure TConsole.SetWindowLeft(AValue: Integer);
begin
  GetConsole.SetPropertyValue('WindowLeft', AValue);
end;

class procedure TConsole.SetWindowPosition(left, top: Integer);
begin
  GetConsole.InvokeMethod('SetWindowPosition', ['System.Int32', 'System.Int32'], [left, top]);
end;

class procedure TConsole.SetWindowSize(width, height: Integer);
begin
  GetConsole.InvokeMethod('SetWindowSize', ['System.Int32', 'System.Int32'], [width, height]);
end;

class procedure TConsole.SetWindowTop(AValue: Integer);
begin
  GetConsole.SetPropertyValue('WindowTop', AValue);
end;

class procedure TConsole.SetWindowWidth(AValue: Integer);
begin
  GetConsole.SetPropertyValue('WindowWidth', AValue);
end;

class procedure TConsole.Write(format: string; arg: TArray<Variant>);
begin
  GetConsole.InvokeMethod('Write', ['System.String', 'System.Object[]'], [format, arg]);
end;

class procedure TConsole.Write(value: string);
begin
  GetConsole.InvokeMethod('Write', ['System.String'], [value]);
end;

class procedure TConsole.Write(value: Variant);
begin
  GetConsole.InvokeMethod('Write', ['System.Object'], [value]);
end;

class procedure TConsole.WriteLine(value: string);
begin
  GetConsole.InvokeMethod('WriteLine', ['System.String'], [value]);
end;

class procedure TConsole.WriteLine(format: string; arg0, arg1: Variant);
begin
  WriteLine(format, [arg0, arg1]);
end;

class procedure TConsole.WriteLine(format: string; arg0: Variant);
begin
  WriteLine(format, [arg0]);
end;

class procedure TConsole.WriteLine(value: Variant);
begin
  GetConsole.InvokeMethod('WriteLine', ['System.Object'], [value]);
end;

class procedure TConsole.WriteLine;
begin
  GetConsole.InvokeMethod('WriteLine');
end;

class procedure TConsole.WriteLine(format: string; arg: array of Variant);
begin
  GetConsole.InvokeMethod('WriteLine', ['System.String', 'System.Object[]'], [format, VarArrayOf(arg)]);
end;

{ TConsoleKeyInfo }

function TConsoleKeyInfo.Get_Key: Integer;
begin
  Result := GetPropertyValue('Key');
end;

function TConsoleKeyInfo.Get_KeyChar: Char;
begin
  Result := VarToChar(GetPropertyValue('KeyChar'));
end;

{ TConsoleCancelEventArgs }

function TConsoleCancelEventArgs.GetCancel: Boolean;
begin
  Result := GetPropertyValue('Cancel');
end;

function TConsoleCancelEventArgs.GetSpecialKey: TConsoleSpecialKey;
begin
  Result := GetPropertyValue('SpecialKey');
end;

procedure TConsoleCancelEventArgs.SetCancel(Value: Boolean);
begin
  SetPropertyValue('Cancel', Value);
end;

procedure TConsoleCancelEventArgs.SetSpecialKey(Value: TConsoleSpecialKey);
begin
  SetPropertyValue('SpecialKey', Value);
end;

end.
