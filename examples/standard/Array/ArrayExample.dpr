program ArrayExample;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  SimpleArrays,
  ObjectArrays,
  GenericArrays,
  uConsole in '..\..\Shared\uConsole.pas';

begin
  TConsole.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.WriteLine('==================================================');
  TConsole.WriteLine('This program prints out Array values.');
  TConsole.WriteLine;

  try
    TSimpleArrays.PrintIntArray;
    TSimpleArrays.PrintObjectArray;
    TSimpleArrays.PrintDoubleArray;
    TSimpleArrays.createByteArray;
    TSimpleArrays.CreateInstanceAnsiChar;
    TSimpleArrays.CreateInstanceBoolean;
    TSimpleArrays.CreateInstanceChar;
    TSimpleArrays.createSByteArray;
    TSimpleArrays.IndexOf;
    TSimpleArrays.PrintCharArray;
    TSimpleArrays.PrintDateTimeArray;
    TSimpleArrays.PrintStringArray;

    TObjectArrays.PrintObjectArray1;
    TObjectArrays.PrintObjectArray2;

    TGenericArrays.CreateArrayOfIStringBuilder;
    TGenericArrays.CreateArrayOfStringBuilder;
    TGenericArrays.ConvertGenericArrayToArrayOf;
    TGenericArrays.CreateGenericArrayOfBoolean;
    TGenericArrays.CreateGenericArrayOfInt32;
    TGenericArrays.CreateGenericArrayOfIStringBuilder;
    TGenericArrays.CreateGenericArrayOfString;
    TGenericArrays.CreateGenericArrayOfStringBuilder;
    TGenericArrays.CreateGenericArrayOfVariant;
    TGenericArrays.CreateArrayOfStringBuilder;
  except
    on E: Exception do
      TConsole.WriteLine(E.Message);
  end;

  TConsole.ReadKey;
end.
