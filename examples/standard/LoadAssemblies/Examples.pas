unit Examples;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface
uses CNCoreClrLib.AssemblyMgr, CNCoreClrLib.Intf;


type
  TAssemblyLoadDemo = class
  private
    class procedure DisplayAssemblyTypes(AAssembly: ICoreClrAssembly); static;
  public
    class procedure LoadAssemblyByAssemblyString; static;
    class procedure LoadAssemblyByFilePath; static;
    class procedure LoadAssemblyFromFile; static;
    class procedure LoadAssemblyError; static;
  end;

implementation

uses uConsole;

const
  DONET_CORE_VER = '5.0.2';

  SYSTEM_DATA_COMMON_DLL         = 'C:\Program Files (x86)\dotnet\shared\Microsoft.NETCore.App\'+DONET_CORE_VER+'\System.Data.Common.dll';
  SYSTEM_NET_SECURITY_DLL        = 'C:\Program Files (x86)\dotnet\shared\Microsoft.NETCore.App\'+DONET_CORE_VER+'\System.Net.Security.dll';
  SYSTEM_DATA_COMMON_ASSEMBLY_STRING = 'System.Data.Common, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a';
  SYSTEM_PRIVATE_DLL             = 'C:\Program Files (x86)\dotnet\shared\Microsoft.NETCore.App\'+DONET_CORE_VER+'\System.Private.CoreLib.dll';
  SYSTEM_RUNTIME_ASSEMBLY_STRING = 'System.Runtime, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a';

class procedure TAssemblyLoadDemo.DisplayAssemblyTypes(AAssembly : ICoreClrAssembly);
var
  I: Integer;
  m_types: TArray<ICoreClrType>;
begin
  TConsole.WriteLine('Loading Types for Assembly ''{0}''', AAssembly.FullName);
  TConsole.WriteLine('-----------------------------------------------------');

  m_types := AAssembly.GetTypes;
  // Display all the types contained in the specified assembly.
  for I := 0 to Length(m_types) - 1 do
    TConsole.WriteLine(m_types[I].Name);

  TConsole.WriteLine();
  TConsole.WriteLine();
end;

class procedure TAssemblyLoadDemo.LoadAssemblyFromFile;
var
  m_assembly: ICoreClrAssembly;
begin
  TConsole.WriteLine('Loading System.Data.Common.dll using Assembly File');

  m_assembly := TCoreClrAssembly.LoadFrom(SYSTEM_DATA_COMMON_DLL);
  DisplayAssemblyTypes(m_assembly);
end;

//The following example loads an assembly given its fully qualified name, and
//lists all the types contained in the specified assembly.
class procedure TAssemblyLoadDemo.LoadAssemblyByAssemblyString;
var
  m_assembly: ICoreClrAssembly;
begin
  // You must supply a valid fully qualified assembly name.
  m_assembly := TCoreClrAssembly.Load(SYSTEM_DATA_COMMON_ASSEMBLY_STRING);
  DisplayAssemblyTypes(m_assembly);
end;

class procedure TAssemblyLoadDemo.LoadAssemblyByFilePath;
var
  m_assembly: ICoreClrAssembly;
begin
  TConsole.WriteLine('Loading System.Net.Security.dll using File Path');

  m_assembly := TCoreClrAssembly.LoadFile(SYSTEM_NET_SECURITY_DLL);
  DisplayAssemblyTypes(m_assembly);
end;

class procedure TAssemblyLoadDemo.LoadAssemblyError;
begin
  TConsole.WriteLine('Loading Inaccessible Assembly. This should error.');

  TCoreClrAssembly.LoadFile(SYSTEM_PRIVATE_DLL);
end;

end.
