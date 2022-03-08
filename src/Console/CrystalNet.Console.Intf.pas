unit CrystalNet.Console.Intf;

{$WARN HIDING_MEMBER OFF}
{$WARN HIDDEN_VIRTUAL OFF}

interface
uses
	CNCoreClrLib.BridgeMgr, CrystalNet.Runtime.Intf, CNCoreClrLib.CallbackMgr, 
	CrystalNet.Console.Consts, CrystalNet.Console.Enums, CNCoreClrLib.RttiMgr;

type
{ Forward Declarations }

	IConsoleCancelEventArgs = interface;
	IConsoleKeyInfo = interface;

{	Event Handlers	}

{$M+}
	TConsoleCancelEventHandler = reference to procedure(sender: ICoreClrInstance; e: IConsoleCancelEventArgs);
{$M-}

	IConsoleClass = interface(ICoreClrClass)
	['{20A50F11-1ED7-451F-8E77-DFF3F53EA272}']
	{ private }
		{ class } function _GetProp_BackgroundColor: TConsoleColor;
		{ class } procedure _SetProp_BackgroundColor(Value: TConsoleColor);
		{ class } function _GetProp_BufferHeight: Integer;
		{ class } procedure _SetProp_BufferHeight(Value: Integer);
		{ class } function _GetProp_BufferWidth: Integer;
		{ class } procedure _SetProp_BufferWidth(Value: Integer);
		{ class } function _GetProp_CapsLock: Boolean;
		{ class } function _GetProp_CursorLeft: Integer;
		{ class } procedure _SetProp_CursorLeft(Value: Integer);
		{ class } function _GetProp_CursorSize: Integer;
		{ class } procedure _SetProp_CursorSize(Value: Integer);
		{ class } function _GetProp_CursorTop: Integer;
		{ class } procedure _SetProp_CursorTop(Value: Integer);
		{ class } function _GetProp_CursorVisible: Boolean;
		{ class } procedure _SetProp_CursorVisible(Value: Boolean);
		{ class } function _GetProp_Error: ITextWriter;
		{ class } function _GetProp_ForegroundColor: TConsoleColor;
		{ class } procedure _SetProp_ForegroundColor(Value: TConsoleColor);
		{ class } function _GetProp_In: ITextReader;
		{ class } function _GetProp_InputEncoding: IEncoding;
		{ class } procedure _SetProp_InputEncoding(Value: IEncoding);
		{ class } function _GetProp_IsErrorRedirected: Boolean;
		{ class } function _GetProp_IsInputRedirected: Boolean;
		{ class } function _GetProp_IsOutputRedirected: Boolean;
		{ class } function _GetProp_KeyAvailable: Boolean;
		{ class } function _GetProp_LargestWindowHeight: Integer;
		{ class } function _GetProp_LargestWindowWidth: Integer;
		{ class } function _GetProp_NumberLock: Boolean;
		{ class } function _GetProp_Out: ITextWriter;
		{ class } function _GetProp_OutputEncoding: IEncoding;
		{ class } procedure _SetProp_OutputEncoding(Value: IEncoding);
		{ class } function _GetProp_Title: String;
		{ class } procedure _SetProp_Title(Value: String);
		{ class } function _GetProp_TreatControlCAsInput: Boolean;
		{ class } procedure _SetProp_TreatControlCAsInput(Value: Boolean);
		{ class } function _GetProp_WindowHeight: Integer;
		{ class } procedure _SetProp_WindowHeight(Value: Integer);
		{ class } function _GetProp_WindowLeft: Integer;
		{ class } procedure _SetProp_WindowLeft(Value: Integer);
		{ class } function _GetProp_WindowTop: Integer;
		{ class } procedure _SetProp_WindowTop(Value: Integer);
		{ class } function _GetProp_WindowWidth: Integer;
		{ class } procedure _SetProp_WindowWidth(Value: Integer);
		{ class } function _GetEvt_CancelKeyPress: TConsoleCancelEventHandler;
		{ class } procedure _SetEvt_CancelKeyPress(Value: TConsoleCancelEventHandler);
	{ public }
		{ class } procedure Beep(); overload;
		{ class } procedure Beep(frequency: Integer; duration: Integer); overload;
		{ class } procedure Clear();
		{ class } function GetCursorPosition(): IValueTuple<Integer, Integer>;
		{ class } procedure MoveBufferArea(sourceLeft: Integer; sourceTop: Integer; sourceWidth: Integer; sourceHeight: Integer; targetLeft: Integer; targetTop: Integer); overload;
		{ class } procedure MoveBufferArea(sourceLeft: Integer; sourceTop: Integer; sourceWidth: Integer; sourceHeight: Integer; targetLeft: Integer; targetTop: Integer; sourceChar: Char; sourceForeColor: TConsoleColor; sourceBackColor: TConsoleColor); overload;
		{ class } function OpenStandardError(): IStream; overload;
		{ class } function OpenStandardError(bufferSize: Integer): IStream; overload;
		{ class } function OpenStandardInput(): IStream; overload;
		{ class } function OpenStandardInput(bufferSize: Integer): IStream; overload;
		{ class } function OpenStandardOutput(): IStream; overload;
		{ class } function OpenStandardOutput(bufferSize: Integer): IStream; overload;
		{ class } function Read(): Integer;
		{ class } function ReadKey(): IConsoleKeyInfo; overload;
		{ class } function ReadKey(intercept: Boolean): IConsoleKeyInfo; overload;
		{ class } function ReadLine(): String;
		{ class } procedure ResetColor();
		{ class } procedure SetBufferSize(width: Integer; height: Integer);
		{ class } procedure SetCursorPosition(left: Integer; top: Integer);
		{ class } procedure SetError(newError: ITextWriter);
		{ class } procedure SetIn(newIn: ITextReader);
		{ class } procedure SetOut(newOut: ITextWriter);
		{ class } procedure SetWindowPosition(left: Integer; top: Integer);
		{ class } procedure SetWindowSize(width: Integer; height: Integer);
		{ class } procedure Write(format: String; arg0: Variant); overload;
		{ class } procedure Write(format: String; arg: TArray<Variant>); overload;
		{ class } procedure Write(format: String; arg0: Variant; arg1: Variant); overload;
		{ class } procedure Write(buffer: TArray<Char>; index: Integer; count: Integer); overload;
		{ class } procedure Write(format: String; arg0: Variant; arg1: Variant; arg2: Variant); overload;
		{ class } procedure Write(value: Boolean); overload;
		{ class } procedure Write(value: Char); overload;
		{ class } procedure Write(buffer: TArray<Char>); overload;
		{ class } procedure Write(value: Double); overload;
		{ class } procedure Write(value: IDecimal); overload;
		{ class } procedure Write(value: Single); overload;
		{ class } procedure Write(value: Integer); overload;
		{ class } procedure Write(value: longword); overload;
		{ class } procedure Write(value: Int64); overload;
		{ class } procedure Write(value: UInt64); overload;
		{ class } procedure Write(value: Variant); overload;
		{ class } procedure Write(value: String); overload;
		{ class } procedure WriteLine(format: String; arg0: Variant); overload;
		{ class } procedure WriteLine(format: String; arg: TArray<Variant>); overload;
		{ class } procedure WriteLine(format: String; arg0: Variant; arg1: Variant); overload;
		{ class } procedure WriteLine(buffer: TArray<Char>; index: Integer; count: Integer); overload;
		{ class } procedure WriteLine(format: String; arg0: Variant; arg1: Variant; arg2: Variant); overload;
		{ class } procedure WriteLine(); overload;
		{ class } procedure WriteLine(value: Boolean); overload;
		{ class } procedure WriteLine(value: Char); overload;
		{ class } procedure WriteLine(buffer: TArray<Char>); overload;
		{ class } procedure WriteLine(value: IDecimal); overload;
		{ class } procedure WriteLine(value: Double); overload;
		{ class } procedure WriteLine(value: Single); overload;
		{ class } procedure WriteLine(value: Integer); overload;
		{ class } procedure WriteLine(value: longword); overload;
		{ class } procedure WriteLine(value: Int64); overload;
		{ class } procedure WriteLine(value: UInt64); overload;
		{ class } procedure WriteLine(value: Variant); overload;
		{ class } procedure WriteLine(value: String); overload;
		{ class } property BackgroundColor: TConsoleColor read _GetProp_BackgroundColor write _SetProp_BackgroundColor;
		{ class } property BufferHeight: Integer read _GetProp_BufferHeight write _SetProp_BufferHeight;
		{ class } property BufferWidth: Integer read _GetProp_BufferWidth write _SetProp_BufferWidth;
		{ class } property CapsLock: Boolean read _GetProp_CapsLock;
		{ class } property CursorLeft: Integer read _GetProp_CursorLeft write _SetProp_CursorLeft;
		{ class } property CursorSize: Integer read _GetProp_CursorSize write _SetProp_CursorSize;
		{ class } property CursorTop: Integer read _GetProp_CursorTop write _SetProp_CursorTop;
		{ class } property CursorVisible: Boolean read _GetProp_CursorVisible write _SetProp_CursorVisible;
		{ class } property Error: ITextWriter read _GetProp_Error;
		{ class } property ForegroundColor: TConsoleColor read _GetProp_ForegroundColor write _SetProp_ForegroundColor;
		{ class } property &In: ITextReader read _GetProp_In;
		{ class } property InputEncoding: IEncoding read _GetProp_InputEncoding write _SetProp_InputEncoding;
		{ class } property IsErrorRedirected: Boolean read _GetProp_IsErrorRedirected;
		{ class } property IsInputRedirected: Boolean read _GetProp_IsInputRedirected;
		{ class } property IsOutputRedirected: Boolean read _GetProp_IsOutputRedirected;
		{ class } property KeyAvailable: Boolean read _GetProp_KeyAvailable;
		{ class } property LargestWindowHeight: Integer read _GetProp_LargestWindowHeight;
		{ class } property LargestWindowWidth: Integer read _GetProp_LargestWindowWidth;
		{ class } property NumberLock: Boolean read _GetProp_NumberLock;
		{ class } property &Out: ITextWriter read _GetProp_Out;
		{ class } property OutputEncoding: IEncoding read _GetProp_OutputEncoding write _SetProp_OutputEncoding;
		{ class } property Title: String read _GetProp_Title write _SetProp_Title;
		{ class } property TreatControlCAsInput: Boolean read _GetProp_TreatControlCAsInput write _SetProp_TreatControlCAsInput;
		{ class } property WindowHeight: Integer read _GetProp_WindowHeight write _SetProp_WindowHeight;
		{ class } property WindowLeft: Integer read _GetProp_WindowLeft write _SetProp_WindowLeft;
		{ class } property WindowTop: Integer read _GetProp_WindowTop write _SetProp_WindowTop;
		{ class } property WindowWidth: Integer read _GetProp_WindowWidth write _SetProp_WindowWidth;
		{ class } property CancelKeyPress: TConsoleCancelEventHandler read _GetEvt_CancelKeyPress write _SetEvt_CancelKeyPress;
	end;

	[CoreTypeSignature(SYSTEM_CONSOLE)]
	IConsole = interface(IObject)
	['{1D0FBE34-7468-4605-9400-AA739A245CE7}']
	end;

	[CoreTypeSignature(SYSTEM_CONSOLECANCELEVENTARGS)]
	IConsoleCancelEventArgs = interface(IEventArgs)
	['{AB4C22BB-BA43-48EC-9CA9-2C8D5E53C86D}']
	{ private }
		function _GetProp_Cancel: Boolean;
		procedure _SetProp_Cancel(Value: Boolean);
		function _GetProp_SpecialKey: TConsoleSpecialKey;
	{ public }
		property Cancel: Boolean read _GetProp_Cancel write _SetProp_Cancel;
		property SpecialKey: TConsoleSpecialKey read _GetProp_SpecialKey;
	end;

	[CoreTypeSignature(SYSTEM_CONSOLEKEYINFO)]
	IConsoleKeyInfo = interface(IValueType)
	['{1BE0B366-255B-4B8F-9AAF-8423BD5E5C3C}']
	{ private }
		function _GetProp_Key: TConsoleKey;
		function _GetProp_KeyChar: Char;
		function _GetProp_Modifiers: TConsoleModifiers_Set;
	{ public }
		function Equals(obj: IConsoleKeyInfo): Boolean;
		property Key: TConsoleKey read _GetProp_Key;
		property KeyChar: Char read _GetProp_KeyChar;
		property Modifiers: TConsoleModifiers_Set read _GetProp_Modifiers;
	end;

implementation

procedure RegisterTypes;
begin
	TRegGenericTypes.RegisterTypeNames('TConsoleCancelEventHandler', SYSTEM_CONSOLECANCELEVENTHANDLER, True);
end;

initialization
	RegisterTypes;

end.

