unit CrystalNet.Console;

interface
uses
	CNCoreClrLib.BridgeMgr, CrystalNet.Console.Consts, CrystalNet.Console.Enums, 
	CrystalNet.Console.Intf;

type
	TConsole = class(TCoreClrGenericImport<IConsoleClass, IConsole>);

	TConsoleCancelEventArgs = class(TCoreClrGenericImport<ICoreClrClass, IConsoleCancelEventArgs>);

	TConsoleKeyInfo = class(TCoreClrGenericImport<ICoreClrClass, IConsoleKeyInfo>)
	public
		class function Create(keyChar: Char; key: TConsoleKey; shift: Boolean; alt: Boolean; control: Boolean): IConsoleKeyInfo;
	end;

implementation

{	TConsoleKeyInfo	}

class function TConsoleKeyInfo.Create(keyChar: Char; key: TConsoleKey; shift: Boolean; alt: Boolean; control: Boolean): IConsoleKeyInfo;
begin
	Result := inherited Create([keyChar, ConsoleKeyValues[key], shift, alt, control]);
end;

end.

