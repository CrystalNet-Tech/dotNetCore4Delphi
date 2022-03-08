program CreateCoreObject;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  Variants,
  uConsole in '..\Shared\uConsole.pas',
  CreateBaseObject in 'CreateBaseObject.pas',
  CreateStaticObject in 'CreateStaticObject.pas',
  CreateGenericObject in 'CreateGenericObject.pas',
  CreateObject in 'CreateObject.pas';

begin
  TConsole.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.WriteLine('========================================');
  TConsole.WriteLine('The program demonstrate how to create instances of .Net Core Objects');
  TConsole.WriteLine;
  try
    //Base Object
    TBaseObjectDemo.CreateBaseObject;
    TBaseObjectDemo.CreateIntegerObject;
    TBaseObjectDemo.CreateArrayObject;

    // Generic List Object
    TGenericObjectDemo.CreateGenericListOfInt32;
    TGenericObjectDemo.CreateGenericListOfString;
    TGenericObjectDemo.CreateGenericListObjectOfInteger;

    //Static Math Class
    TCreateStaticObjectDemo.Abs;
    TCreateStaticObjectDemo.Floor;
    TCreateStaticObjectDemo.Round;
    TCreateStaticObjectDemo.Truncate;
    TCreateStaticObjectDemo.PI;

    // StringBuilder Class Object
    TCreateObjectDemo.Example1;
    TCreateObjectDemo.Example2;
    TCreateObjectDemo.Example3;
    TCreateObjectDemo.Example4;
    TCreateObjectDemo.Example5;
    TCreateObjectDemo.Example6;
    TCreateObjectDemo.Example7;
    TCreateObjectDemo.Example8;
  except
    on E:Exception do
      TConsole.WriteLine('Exception : {0}', E.Message);
  end;
  TConsole.ReadKey;
end.

