unit CrystalNet.Console.Enums;

interface

{$WARN BOUNDS_ERROR OFF}

uses
	CoreClrTypes, CNCoreClrLib.EnumMgr, CrystalNet.Console.Consts;

type
	ConsoleColor = TNCEnum;
const
	ConsoleColor_Black = $00000000;
	ConsoleColor_DarkBlue = $00000001;
	ConsoleColor_DarkGreen = $00000002;
	ConsoleColor_DarkCyan = $00000003;
	ConsoleColor_DarkRed = $00000004;
	ConsoleColor_DarkMagenta = $00000005;
	ConsoleColor_DarkYellow = $00000006;
	ConsoleColor_Gray = $00000007;
	ConsoleColor_DarkGray = $00000008;
	ConsoleColor_Blue = $00000009;
	ConsoleColor_Green = $0000000A;
	ConsoleColor_Cyan = $0000000B;
	ConsoleColor_Red = $0000000C;
	ConsoleColor_Magenta = $0000000D;
	ConsoleColor_Yellow = $0000000E;
	ConsoleColor_White = $0000000F;

type
	ConsoleKey = TNCEnum;
const
	ConsoleKey_Backspace = $00000008;
	ConsoleKey_Tab = $00000009;
	ConsoleKey_Clear = $0000000C;
	ConsoleKey_Enter = $0000000D;
	ConsoleKey_Pause = $00000013;
	ConsoleKey_Escape = $0000001B;
	ConsoleKey_Spacebar = $00000020;
	ConsoleKey_PageUp = $00000021;
	ConsoleKey_PageDown = $00000022;
	ConsoleKey_End = $00000023;
	ConsoleKey_Home = $00000024;
	ConsoleKey_LeftArrow = $00000025;
	ConsoleKey_UpArrow = $00000026;
	ConsoleKey_RightArrow = $00000027;
	ConsoleKey_DownArrow = $00000028;
	ConsoleKey_Select = $00000029;
	ConsoleKey_Print = $0000002A;
	ConsoleKey_Execute = $0000002B;
	ConsoleKey_PrintScreen = $0000002C;
	ConsoleKey_Insert = $0000002D;
	ConsoleKey_Delete = $0000002E;
	ConsoleKey_Help = $0000002F;
	ConsoleKey_D0 = $00000030;
	ConsoleKey_D1 = $00000031;
	ConsoleKey_D2 = $00000032;
	ConsoleKey_D3 = $00000033;
	ConsoleKey_D4 = $00000034;
	ConsoleKey_D5 = $00000035;
	ConsoleKey_D6 = $00000036;
	ConsoleKey_D7 = $00000037;
	ConsoleKey_D8 = $00000038;
	ConsoleKey_D9 = $00000039;
	ConsoleKey_A = $00000041;
	ConsoleKey_B_0 = $00000042;
	ConsoleKey_C_0 = $00000043;
	ConsoleKey_D_11 = $00000044;
	ConsoleKey_E_3 = $00000045;
	ConsoleKey_F = $00000046;
	ConsoleKey_G = $00000047;
	ConsoleKey_H_1 = $00000048;
	ConsoleKey_I_0 = $00000049;
	ConsoleKey_J = $0000004A;
	ConsoleKey_K = $0000004B;
	ConsoleKey_L_0 = $0000004C;
	ConsoleKey_M = $0000004D;
	ConsoleKey_N = $0000004E;
	ConsoleKey_O = $0000004F;
	ConsoleKey_P_4 = $00000050;
	ConsoleKey_Q = $00000051;
	ConsoleKey_R_0 = $00000052;
	ConsoleKey_S_1 = $00000053;
	ConsoleKey_T_0 = $00000054;
	ConsoleKey_U_0 = $00000055;
	ConsoleKey_V = $00000056;
	ConsoleKey_W = $00000057;
	ConsoleKey_X = $00000058;
	ConsoleKey_Y = $00000059;
	ConsoleKey_Z = $0000005A;
	ConsoleKey_LeftWindows = $0000005B;
	ConsoleKey_RightWindows = $0000005C;
	ConsoleKey_Applications = $0000005D;
	ConsoleKey_Sleep = $0000005F;
	ConsoleKey_NumPad0 = $00000060;
	ConsoleKey_NumPad1 = $00000061;
	ConsoleKey_NumPad2 = $00000062;
	ConsoleKey_NumPad3 = $00000063;
	ConsoleKey_NumPad4 = $00000064;
	ConsoleKey_NumPad5 = $00000065;
	ConsoleKey_NumPad6 = $00000066;
	ConsoleKey_NumPad7 = $00000067;
	ConsoleKey_NumPad8 = $00000068;
	ConsoleKey_NumPad9 = $00000069;
	ConsoleKey_Multiply = $0000006A;
	ConsoleKey_Add = $0000006B;
	ConsoleKey_Separator = $0000006C;
	ConsoleKey_Subtract = $0000006D;
	ConsoleKey_Decimal = $0000006E;
	ConsoleKey_Divide = $0000006F;
	ConsoleKey_F1 = $00000070;
	ConsoleKey_F2 = $00000071;
	ConsoleKey_F3 = $00000072;
	ConsoleKey_F4 = $00000073;
	ConsoleKey_F5 = $00000074;
	ConsoleKey_F6 = $00000075;
	ConsoleKey_F7 = $00000076;
	ConsoleKey_F8 = $00000077;
	ConsoleKey_F9 = $00000078;
	ConsoleKey_F10 = $00000079;
	ConsoleKey_F11 = $0000007A;
	ConsoleKey_F12 = $0000007B;
	ConsoleKey_F13 = $0000007C;
	ConsoleKey_F14 = $0000007D;
	ConsoleKey_F15 = $0000007E;
	ConsoleKey_F16 = $0000007F;
	ConsoleKey_F17 = $00000080;
	ConsoleKey_F18 = $00000081;
	ConsoleKey_F19 = $00000082;
	ConsoleKey_F20 = $00000083;
	ConsoleKey_F21 = $00000084;
	ConsoleKey_F22 = $00000085;
	ConsoleKey_F23 = $00000086;
	ConsoleKey_F24 = $00000087;
	ConsoleKey_BrowserBack = $000000A6;
	ConsoleKey_BrowserForward = $000000A7;
	ConsoleKey_BrowserRefresh = $000000A8;
	ConsoleKey_BrowserStop = $000000A9;
	ConsoleKey_BrowserSearch = $000000AA;
	ConsoleKey_BrowserFavorites = $000000AB;
	ConsoleKey_BrowserHome = $000000AC;
	ConsoleKey_VolumeMute = $000000AD;
	ConsoleKey_VolumeDown = $000000AE;
	ConsoleKey_VolumeUp = $000000AF;
	ConsoleKey_MediaNext = $000000B0;
	ConsoleKey_MediaPrevious = $000000B1;
	ConsoleKey_MediaStop = $000000B2;
	ConsoleKey_MediaPlay = $000000B3;
	ConsoleKey_LaunchMail = $000000B4;
	ConsoleKey_LaunchMediaSelect = $000000B5;
	ConsoleKey_LaunchApp1 = $000000B6;
	ConsoleKey_LaunchApp2 = $000000B7;
	ConsoleKey_Oem1 = $000000BA;
	ConsoleKey_OemPlus = $000000BB;
	ConsoleKey_OemComma = $000000BC;
	ConsoleKey_OemMinus = $000000BD;
	ConsoleKey_OemPeriod = $000000BE;
	ConsoleKey_Oem2 = $000000BF;
	ConsoleKey_Oem3 = $000000C0;
	ConsoleKey_Oem4 = $000000DB;
	ConsoleKey_Oem5 = $000000DC;
	ConsoleKey_Oem6 = $000000DD;
	ConsoleKey_Oem7 = $000000DE;
	ConsoleKey_Oem8 = $000000DF;
	ConsoleKey_Oem102 = $000000E2;
	ConsoleKey_Process = $000000E5;
	ConsoleKey_Packet = $000000E7;
	ConsoleKey_Attention = $000000F6;
	ConsoleKey_CrSel = $000000F7;
	ConsoleKey_ExSel = $000000F8;
	ConsoleKey_EraseEndOfFile = $000000F9;
	ConsoleKey_Play = $000000FA;
	ConsoleKey_Zoom = $000000FB;
	ConsoleKey_NoName = $000000FC;
	ConsoleKey_Pa1 = $000000FD;
	ConsoleKey_OemClear = $000000FE;

type
	ConsoleModifiers = TNCEnum;
const
	ConsoleModifiers_Alt = $00000001;
	ConsoleModifiers_Shift = $00000002;
	ConsoleModifiers_Control = $00000004;

type
	ConsoleSpecialKey = TNCEnum;
const
	ConsoleSpecialKey_ControlC = $00000000;
	ConsoleSpecialKey_ControlBreak = $00000001;

type
	TConsoleColor = 
	(
		ccBlack, 
		ccDarkBlue, 
		ccDarkGreen, 
		ccDarkCyan, 
		ccDarkRed, 
		ccDarkMagenta, 
		ccDarkYellow, 
		ccGray, 
		ccDarkGray, 
		ccBlue, 
		ccGreen, 
		ccCyan, 
		ccRed, 
		ccMagenta, 
		ccYellow, 
		ccWhite
	);

	TConsoleKey = 
	(
		ckBackspace, 
		ckTab, 
		ckClear, 
		ckEnter, 
		ckPause, 
		ckEscape, 
		ckSpacebar, 
		ckPageUp, 
		ckPageDown, 
		ckEnd, 
		ckHome, 
		ckLeftArrow, 
		ckUpArrow, 
		ckRightArrow, 
		ckDownArrow, 
		ckSelect, 
		ckPrint, 
		ckExecute, 
		ckPrintScreen, 
		ckInsert, 
		ckDelete, 
		ckHelp, 
		ckD0, 
		ckD1, 
		ckD2, 
		ckD3, 
		ckD4, 
		ckD5, 
		ckD6, 
		ckD7, 
		ckD8, 
		ckD9, 
		ckA, 
		ckB_0, 
		ckC_0, 
		ckD_11, 
		ckE_3, 
		ckF, 
		ckG, 
		ckH_1, 
		ckI_0, 
		ckJ, 
		ckK, 
		ckL_0, 
		ckM, 
		ckN, 
		ckO, 
		ckP_4, 
		ckQ, 
		ckR_0, 
		ckS_1, 
		ckT_0, 
		ckU_0, 
		ckV, 
		ckW, 
		ckX, 
		ckY, 
		ckZ, 
		ckLeftWindows, 
		ckRightWindows, 
		ckApplications, 
		ckSleep, 
		ckNumPad0, 
		ckNumPad1, 
		ckNumPad2, 
		ckNumPad3, 
		ckNumPad4, 
		ckNumPad5, 
		ckNumPad6, 
		ckNumPad7, 
		ckNumPad8, 
		ckNumPad9, 
		ckMultiply, 
		ckAdd, 
		ckSeparator, 
		ckSubtract, 
		ckDecimal, 
		ckDivide, 
		ckF1, 
		ckF2, 
		ckF3, 
		ckF4, 
		ckF5, 
		ckF6, 
		ckF7, 
		ckF8, 
		ckF9, 
		ckF10, 
		ckF11, 
		ckF12, 
		ckF13, 
		ckF14, 
		ckF15, 
		ckF16, 
		ckF17, 
		ckF18, 
		ckF19, 
		ckF20, 
		ckF21, 
		ckF22, 
		ckF23, 
		ckF24, 
		ckBrowserBack, 
		ckBrowserForward, 
		ckBrowserRefresh, 
		ckBrowserStop, 
		ckBrowserSearch, 
		ckBrowserFavorites, 
		ckBrowserHome, 
		ckVolumeMute, 
		ckVolumeDown, 
		ckVolumeUp, 
		ckMediaNext, 
		ckMediaPrevious, 
		ckMediaStop, 
		ckMediaPlay, 
		ckLaunchMail, 
		ckLaunchMediaSelect, 
		ckLaunchApp1, 
		ckLaunchApp2, 
		ckOem1, 
		ckOemPlus, 
		ckOemComma, 
		ckOemMinus, 
		ckOemPeriod, 
		ckOem2, 
		ckOem3, 
		ckOem4, 
		ckOem5, 
		ckOem6, 
		ckOem7, 
		ckOem8, 
		ckOem102, 
		ckProcess, 
		ckPacket, 
		ckAttention, 
		ckCrSel, 
		ckExSel, 
		ckEraseEndOfFile, 
		ckPlay, 
		ckZoom, 
		ckNoName, 
		ckPa1, 
		ckOemClear
	);

	TConsoleModifiers = 
	(
		cmAlt, 
		cmShift, 
		cmControl
	);
	TConsoleModifiers_Set = Set of TConsoleModifiers;

	TConsoleSpecialKey = 
	(
		cskControlC, 
		cskControlBreak
	);

const

	ConsoleColorValues: array[TConsoleColor] of TNCEnum =
	(
		ConsoleColor_Black, 
		ConsoleColor_DarkBlue, 
		ConsoleColor_DarkGreen, 
		ConsoleColor_DarkCyan, 
		ConsoleColor_DarkRed, 
		ConsoleColor_DarkMagenta, 
		ConsoleColor_DarkYellow, 
		ConsoleColor_Gray, 
		ConsoleColor_DarkGray, 
		ConsoleColor_Blue, 
		ConsoleColor_Green, 
		ConsoleColor_Cyan, 
		ConsoleColor_Red, 
		ConsoleColor_Magenta, 
		ConsoleColor_Yellow, 
		ConsoleColor_White
	);

	ConsoleKeyValues: array[TConsoleKey] of TNCEnum =
	(
		ConsoleKey_Backspace, 
		ConsoleKey_Tab, 
		ConsoleKey_Clear, 
		ConsoleKey_Enter, 
		ConsoleKey_Pause, 
		ConsoleKey_Escape, 
		ConsoleKey_Spacebar, 
		ConsoleKey_PageUp, 
		ConsoleKey_PageDown, 
		ConsoleKey_End, 
		ConsoleKey_Home, 
		ConsoleKey_LeftArrow, 
		ConsoleKey_UpArrow, 
		ConsoleKey_RightArrow, 
		ConsoleKey_DownArrow, 
		ConsoleKey_Select, 
		ConsoleKey_Print, 
		ConsoleKey_Execute, 
		ConsoleKey_PrintScreen, 
		ConsoleKey_Insert, 
		ConsoleKey_Delete, 
		ConsoleKey_Help, 
		ConsoleKey_D0, 
		ConsoleKey_D1, 
		ConsoleKey_D2, 
		ConsoleKey_D3, 
		ConsoleKey_D4, 
		ConsoleKey_D5, 
		ConsoleKey_D6, 
		ConsoleKey_D7, 
		ConsoleKey_D8, 
		ConsoleKey_D9, 
		ConsoleKey_A, 
		ConsoleKey_B_0, 
		ConsoleKey_C_0, 
		ConsoleKey_D_11, 
		ConsoleKey_E_3, 
		ConsoleKey_F, 
		ConsoleKey_G, 
		ConsoleKey_H_1, 
		ConsoleKey_I_0, 
		ConsoleKey_J, 
		ConsoleKey_K, 
		ConsoleKey_L_0, 
		ConsoleKey_M, 
		ConsoleKey_N, 
		ConsoleKey_O, 
		ConsoleKey_P_4, 
		ConsoleKey_Q, 
		ConsoleKey_R_0, 
		ConsoleKey_S_1, 
		ConsoleKey_T_0, 
		ConsoleKey_U_0, 
		ConsoleKey_V, 
		ConsoleKey_W, 
		ConsoleKey_X, 
		ConsoleKey_Y, 
		ConsoleKey_Z, 
		ConsoleKey_LeftWindows, 
		ConsoleKey_RightWindows, 
		ConsoleKey_Applications, 
		ConsoleKey_Sleep, 
		ConsoleKey_NumPad0, 
		ConsoleKey_NumPad1, 
		ConsoleKey_NumPad2, 
		ConsoleKey_NumPad3, 
		ConsoleKey_NumPad4, 
		ConsoleKey_NumPad5, 
		ConsoleKey_NumPad6, 
		ConsoleKey_NumPad7, 
		ConsoleKey_NumPad8, 
		ConsoleKey_NumPad9, 
		ConsoleKey_Multiply, 
		ConsoleKey_Add, 
		ConsoleKey_Separator, 
		ConsoleKey_Subtract, 
		ConsoleKey_Decimal, 
		ConsoleKey_Divide, 
		ConsoleKey_F1, 
		ConsoleKey_F2, 
		ConsoleKey_F3, 
		ConsoleKey_F4, 
		ConsoleKey_F5, 
		ConsoleKey_F6, 
		ConsoleKey_F7, 
		ConsoleKey_F8, 
		ConsoleKey_F9, 
		ConsoleKey_F10, 
		ConsoleKey_F11, 
		ConsoleKey_F12, 
		ConsoleKey_F13, 
		ConsoleKey_F14, 
		ConsoleKey_F15, 
		ConsoleKey_F16, 
		ConsoleKey_F17, 
		ConsoleKey_F18, 
		ConsoleKey_F19, 
		ConsoleKey_F20, 
		ConsoleKey_F21, 
		ConsoleKey_F22, 
		ConsoleKey_F23, 
		ConsoleKey_F24, 
		ConsoleKey_BrowserBack, 
		ConsoleKey_BrowserForward, 
		ConsoleKey_BrowserRefresh, 
		ConsoleKey_BrowserStop, 
		ConsoleKey_BrowserSearch, 
		ConsoleKey_BrowserFavorites, 
		ConsoleKey_BrowserHome, 
		ConsoleKey_VolumeMute, 
		ConsoleKey_VolumeDown, 
		ConsoleKey_VolumeUp, 
		ConsoleKey_MediaNext, 
		ConsoleKey_MediaPrevious, 
		ConsoleKey_MediaStop, 
		ConsoleKey_MediaPlay, 
		ConsoleKey_LaunchMail, 
		ConsoleKey_LaunchMediaSelect, 
		ConsoleKey_LaunchApp1, 
		ConsoleKey_LaunchApp2, 
		ConsoleKey_Oem1, 
		ConsoleKey_OemPlus, 
		ConsoleKey_OemComma, 
		ConsoleKey_OemMinus, 
		ConsoleKey_OemPeriod, 
		ConsoleKey_Oem2, 
		ConsoleKey_Oem3, 
		ConsoleKey_Oem4, 
		ConsoleKey_Oem5, 
		ConsoleKey_Oem6, 
		ConsoleKey_Oem7, 
		ConsoleKey_Oem8, 
		ConsoleKey_Oem102, 
		ConsoleKey_Process, 
		ConsoleKey_Packet, 
		ConsoleKey_Attention, 
		ConsoleKey_CrSel, 
		ConsoleKey_ExSel, 
		ConsoleKey_EraseEndOfFile, 
		ConsoleKey_Play, 
		ConsoleKey_Zoom, 
		ConsoleKey_NoName, 
		ConsoleKey_Pa1, 
		ConsoleKey_OemClear
	);

	ConsoleModifiersValues: array[TConsoleModifiers] of TNCEnum =
	(
		ConsoleModifiers_Alt, 
		ConsoleModifiers_Shift, 
		ConsoleModifiers_Control
	);

	ConsoleSpecialKeyValues: array[TConsoleSpecialKey] of TNCEnum =
	(
		ConsoleSpecialKey_ControlC, 
		ConsoleSpecialKey_ControlBreak
	);

function ToNCEnum(Flags: TConsoleModifiers_Set) : TNCEnum; Overload;
function NCEnumAsConsoleModifiers(ConsoleModifiers: TNCEnum) : TConsoleModifiers_Set;

implementation

function ToNCEnum(Flags: TConsoleModifiers_Set) : TNCEnum;
var
	oFlag: TConsoleModifiers;
begin
	Result := $0000000;
	for oFlag:= Low(TConsoleModifiers) to High(TConsoleModifiers) do
		if oFlag in Flags then
			Result := Result or ConsoleModifiersValues[oFlag];
end;


function NCEnumAsConsoleModifiers(ConsoleModifiers: TNCEnum) : TConsoleModifiers_Set;
begin
	Result := TCoreClrEnum.GetSetOfEnumeration<TConsoleModifiers_Set>(SYSTEM_CONSOLEMODIFIERS, ConsoleModifiers);
end;


procedure RegisterTypes;
begin
	TRegClrEnumTypes.RegisterType(TypeInfo(TConsoleColor), SYSTEM_CONSOLECOLOR);
	TRegClrEnumTypes.RegisterType(TypeInfo(TConsoleKey), SYSTEM_CONSOLEKEY);
	TRegClrEnumTypes.RegisterType(TypeInfo(TConsoleModifiers), SYSTEM_CONSOLEMODIFIERS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TConsoleModifiers_Set), SYSTEM_CONSOLEMODIFIERS);
	TRegClrEnumTypes.RegisterType(TypeInfo(TConsoleSpecialKey), SYSTEM_CONSOLESPECIALKEY);
end;

initialization
	RegisterTypes;

end.

