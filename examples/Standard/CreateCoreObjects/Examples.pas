unit Examples;

interface
uses CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr, CoreClrTypes;

type
  TCoreObjectDemo = class

  end;

  TCoreClrBaseObjectFake = class(TCoreClrObject)
  public
    constructor Create(ATypeName: string; IsStaticType: Boolean = False); overload;
    constructor Create(ATypeName: string; AArguments: array of Variant); overload;
    constructor Create(ATypeName: string; AArguments: array of NCObject); overload;
    constructor Create(AGenericTypeName: string; AGenericTypeNames: array of string; AArguments: array of Variant); overload;
    constructor Create(AGenericTypeName: string; AGenericTypeNames: array of string; AArguments: array of NCObject); overload;
    constructor Create(AGenericTypeName: string; AGenericTypeNames: array of string; AArguments: NCObjectArray); overload;
  end;


implementation


{ TCoreClrBaseObjectFake }

constructor TCoreClrBaseObjectFake.Create(ATypeName: string;
  AArguments: array of NCObject);
begin
  inherited Create(ATypeName, AArguments);
end;

constructor TCoreClrBaseObjectFake.Create(ATypeName: string;
  AArguments: array of Variant);
begin
  inherited Create(ATypeName, AArguments);
end;

constructor TCoreClrBaseObjectFake.Create(ATypeName: string;
  IsStaticType: Boolean);
begin
  inherited Create(ATypeName, IsStaticType);
end;

constructor TCoreClrBaseObjectFake.Create(AGenericTypeName: string;
  AGenericTypeNames: array of string; AArguments: NCObjectArray);
begin
  inherited Create(AGenericTypeName, AGenericTypeNames, AArguments);
end;

constructor TCoreClrBaseObjectFake.Create(AGenericTypeName: string;
  AGenericTypeNames: array of string; AArguments: array of NCObject);
begin
  inherited Create(AGenericTypeName, AGenericTypeNames, AArguments);
end;

constructor TCoreClrBaseObjectFake.Create(AGenericTypeName: string;
  AGenericTypeNames: array of string; AArguments: array of Variant);
begin
  inherited Create(AGenericTypeName, AGenericTypeNames, AArguments);
end;

//
//procedure TCoreClrObjectTest.Constructor1;
//begin
//  // Arrange
//  Expected := 'System.Collections.Generic.List`1[[System.Int32, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]';
//
//  // Act
//  fakeObject := TCoreClrBaseObjectFake.Create('System.Collections.Generic.List`1', ['System.Int32'], [10]);
//
//  // Assert
//  Assert.IsNotNull(fakeObject);
//  Assert.AreEqual(Expected, fakeObject.getType().FullName);
//end;
//
//
//procedure TCoreClrObjectTest.Constructor2;
//begin
//  // Arrange
//  Expected := 'System.Collections.Generic.List`1[[System.Int32, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]';
//
//  // Act
//  fakeObject := TCoreClrBaseObjectFake.Create('System.Collections.Generic.List`1', ['System.Int32'], [10]);
//
//  // Assert
//  Assert.IsNotNull(fakeObject);
//  Assert.AreEqual(Expected, fakeObject.getType().FullName);
//end;
//
//
//procedure TCoreClrObjectTest.Constructor3;
//begin
//  // Arrange
//  Expected := 'System.Text.StringBuilder';
//
//  // Act
//  fakeObject := TCoreClrBaseObjectFake.Create('System.Text.StringBuilder', [10]);
//
//  // Assert
//  Assert.IsNotNull(fakeObject);
//  Assert.AreEqual(Expected, fakeObject.getType().FullName);
//end;
//
//
//procedure TCoreClrObjectTest.Constructor4;
//begin
//  // Arrange
//  Expected := 'System.Text.StringBuilder';
//
//  // Act
//  fakeObject := TCoreClrBaseObjectFake.Create('System.Text.StringBuilder', [10]);
//
//  // Assert
//  Assert.IsNotNull(fakeObject);
//  Assert.AreEqual(Expected, fakeObject.getType().FullName);
//end;
//
//
//procedure TCoreClrObjectTest.Constructor5;
//begin
//  // Arrange
//  Expected := 'System.Collections.Generic.List`1[[System.Int32, System.Private.CoreLib, Version=5.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]';
//
//  // Act
//  fakeObject := TCoreClrBaseObjectFake.Create('System.Collections.Generic.List`1', ['System.Int32'], [10]);
//
//  // Assert
//  Assert.IsNotNull(fakeObject);
//  Assert.AreEqual(Expected, fakeObject.getType().FullName);
//end;
//
//procedure TCoreClrObjectTest.DefaultPointer;
//var
//  clrBaseObject: ICoreClrObject;
//begin
//  // Arrange
//  clrBaseObject := TCoreClrObject.Create();
//
//  // Act & Assert
//  Assert.IsNotNull(clrBaseObject.DefaultPointer);
//end;
//
//
//procedure TCoreClrObjectTest.isStatic;
//begin
//  // Arrange & Act
//  clrObject := TCoreClrBaseObjectFake.Create('System.Data.Common.DbProviderFactories', true);
//
//  // Assert
//  Assert.IsTrue(clrObject.isStatic);
//end;
//



end.
