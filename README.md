# dotNetCore4Delphi
The dotNetCore4Delphi is a .Net Core Runtime Library for Delphi which helps Delphi/Pascal developers work with .Net Core. It is designed to provide a way to interact with .Net Core applications from Delphi/Pascal.

# What dotNetCore4Delphi can do:
* Access .Net Core Framework Class Library (such as Collections, IO, Networking, Security, Cryptography etc).
* Access 3rd Party .Net Core Libraries.
* Hosts the .Net Core Common Language Runtime (CoreCLR) in Delphi/Pascal.
* Can load and access assemblies/types from 3rd party .Net Core libraries or executable files.
* Can invoke members of a .Net Core types (such as constructor, fields, properties, methods and events).
* Can create instance of .Net Core object.
* Can handle .Net Core exceptions.
* Can handle, access and invoke .Net Core events.
* There are tools to help generate your .Net Core Libraries into Delphi pas files.
* ...and many more.

# Competitive Advantages
* Cross-platform framework that runs on Windows, Linux(very soon) and macOS(soon) operating systems.
* Full access to .Net Core Framework Class Library.
* No extra dll is required when deployed.
* There is no configuration required and no external tools installation needed. Project can be moved shared across developer and build & test machines with just granting access to source code and transitioned to production within the main application archive.
* Allows Delphi/Pascal to consume .Net Core libraries as if they were native code.
* When it comes to advanced libraries which use complex objects as method arguments, results, utilize event, callbacks and asynchronous invocation many alternatives become unacceptable whereas dotNetCore4Delphi starts to shine with intuitive and easy way of working with such objects almost like using single technology stack.
* Lightweight and easy to use.

# Example

How to Load .Net Core Assemblies and Create .Net Core Objects

1. C# codes which is compiled into .Net Core Mathematics.dll
```c#
namespace Mathematics
{
    public class Mathematics
    {
        public int Add(int a, int b)
        {
            return a + b;
        }
        public int Subtract(int a, int b)
        {
            return a - b;
        }
        public bool Equal(int a, int b)
        {
            return a == b;
        }
        public static int Multiply(int a, int b)
        {
            return a * b;
        }
    }
}
```

2. Delphi codes which load the Mathematics.dll and access the members of the Mathematics type from Delphi using dotNetCore4Delphi.
```pascal
program CoreBridgeExample;

{$APPTYPE CONSOLE}
{$R *.res}

uses SysUtils, CNCoreClrLib.BridgeMgr, CrystalNet.Runtime.Intf,CNCoreClrLib.AssemblyMgr, CrystalNet.Console, CNCoreClrLib.RttiMgr;

type
    IMathematicsClass = interface(ICoreClrClass)
    ['{22DBBA95-18C3-4AC7-8326-328E37544F33}']
    { public }
        { class } function Multiply(a: Integer; b: Integer): Integer;
    end;

    [CoreTypeSignature('Mathematics.Mathematics')]
    IMathematics = interface(IObject)
    ['{32A9F9E0-5A9E-41FE-916C-09599EDAD4BD}']
    { public }
        function Add(a: Integer; b: Integer): Integer;
        function Equal(a: Integer; b: Integer): Boolean;
        function Subtract(a: Integer; b: Integer): Integer;
    end;

    TMathematics = class(TCoreClrGenericImport<IMathematicsClass, IMathematics>)
    public
        class function Create: IMathematics;
    end;

{ TMathematics }

class function TMathematics.Create: IMathematics;
begin
    Result := inherited Create([]);
end;

var
  Mathematics : IMathematics;
begin
  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('======================================');
  TConsole.NClass.WriteLine('This program demonstrate how to use the Core Bridge to communicate with .Net library type members');
  TConsole.NClass.WriteLine;
  try  
    // Load the assembly from the same location as the EXE
    TCoreClrAssembly.LoadFrom('Mathematics.dll');
    
    // Create instance of Mathematics
    Mathematics := TMathematics.Create;
    
    // Access both instance and static members of the Mathematics class
    TConsole.NClass.WriteLine('Add(30, 50):      {0}', Mathematics.Add(30, 50));
    TConsole.NClass.WriteLine('Subtract(30, 50): {0}', Mathematics.Subtract(30, 50));
    TConsole.NClass.WriteLine('Equal(30, 50):    {0}', Mathematics.Equal(30, 50));
    TConsole.NClass.WriteLine('Equal(50, 50):    {0}', Mathematics.Equal(50, 50));
    TConsole.NClass.WriteLine('Multiply(50, 50): {0}', TMathematics.NClass.Multiply(50, 50)); //Static call
   except
    on E: Exception do
      TConsole.NClass.WriteLine('Exception: {0}', e.Message);
  end;
  TConsole.NClass.ReadKey;
end.
```

# License
The Apache License 2.0 applies to all saples in this repository.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0
  
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

# Running Tutorial Projects
To run the tutorial project:
* Clone the repository to your local machine.
* Download latest release of dotNetCore4Delphi Setup and Install: https://www.crystalnet-tech.com/Products/dotNetCore4Delphi/download
* Open the project using Embarcadero RAD Studio or Delphi XE or higher IDE versions of your choice.
