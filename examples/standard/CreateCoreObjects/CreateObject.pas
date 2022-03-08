unit CreateObject;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface
uses CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr, CNCoreClrLib.RttiMgr;

type

{$IFNDEF FPC}
  [TypeMapping('CreateObject.TStringBuilder', 'System.Text.StringBuilder')]
{$ENDIF}
  IStringBuilder = Interface(ICoreClrObject)
  ['{7B1F3651-C6A8-46F5-9C85-8C3E14A54746}']
    function GetCapacity: Integer;
    procedure SetCapacity(Value: Integer);
    function GetLength: Integer;
    procedure SetLength(Value: Integer);
    function GetChar(Index: Integer): Char;
    procedure SetChar(Index: Integer; Value: Char);

    function Append(Value: Variant): IStringBuilder; overload;
    function Append(Value: string): IStringBuilder; overload;
    function Append(Value: TArray<WideChar>): IStringBuilder; overload;
{$IFDEF FPC}
    function AppendFormat(Format: string; Args: array of Variant): IStringBuilder;
{$ELSE}
  {$IF CompilerVersion >= 27.0}
      function AppendFormat(Format: string; Args: TArray<Variant>): IStringBuilder;
  {$ELSE}
      function AppendFormat(Format: string; Args: array of Variant): IStringBuilder;
  {$IFEND}
{$ENDIF}
    function AppendLine(): IStringBuilder; overload;
    function AppendLine(Value: string): IStringBuilder; overload;
    function Remove(StartIndex, Length: Integer): IStringBuilder; overload;
    function Clear(): IStringBuilder; overload;
    function ToString(): string;
    function EnsureCapacity(Capacity: Integer): Integer;
{$IFNDEF FPC}
    function Equals(Value: IStringBuilder): Boolean;
{$ENDIF}
    property Capacity: Integer read GetCapacity write SetCapacity;
    property Length: Integer read GetLength write SetLength;
    property Item[Index: Integer]: Char read GetChar write SetChar; default;
  end;

  TStringBuilder = class(TCoreClrObject, IStringBuilder)
  private
    function GetCapacity: Integer;
    procedure SetCapacity(Value: Integer);
    function GetLength: Integer;
    procedure SetLength(Value: Integer);
    function GetChar(Index: Integer): Char;
    procedure SetChar(Index: Integer; Value: Char);
  public
    constructor Create(); overload;
    constructor Create(Capacity: Integer); overload;
    constructor Create(value: string); overload;
    constructor Create(value: string; Capacity: Integer); overload;

    function Append(Value: Variant): IStringBuilder; overload;
    function Append(Value: string): IStringBuilder; overload;
    function Append(Value: TArray<WideChar>): IStringBuilder; overload;
{$IFDEF FPC}
    function AppendFormat(Format: string; Args: array of Variant): IStringBuilder;
{$ELSE}
  {$IF CompilerVersion >= 27.0}
      function AppendFormat(Format: string; Args: TArray<Variant>): IStringBuilder;
  {$ELSE}
      function AppendFormat(Format: string; Args: array of Variant): IStringBuilder;
  {$IFEND}
{$ENDIF}
    function AppendLine(): IStringBuilder; overload;
    function AppendLine(Value: string): IStringBuilder; overload;
    function Remove(StartIndex, Length: Integer): IStringBuilder; overload;
    function Clear(): IStringBuilder; overload;
    function EnsureCapacity(Capacity: Integer): Integer;
    function ToString(): string;
{$IFNDEF FPC}
    function Equals(Value: IStringBuilder): Boolean;
{$ENDIF}

    property Capacity: Integer read GetCapacity write SetCapacity;
    property Length: Integer read GetLength write SetLength;
    property Item[Index: Integer]: Char read GetChar write SetChar; default;
  end;

  TCreateObjectDemo = class
  private
  public
    class procedure Example1; static;
    class procedure Example2; static;
    class procedure Example3; static;
    class procedure Example4; static;
    class procedure Example5; static;
    class procedure Example6; static;
    class procedure Example7; static;
    class procedure Example8; static;
  end;


implementation

uses uConsole, Character, variants, CNCoreClrLib.ArrayMgr, CNCoreClrLib.Helpers;

{ TStringBuilder }

function TStringBuilder.Append(Value: TArray<WideChar>): IStringBuilder;
begin
{$IFDEF FPC}
  InvokeMethod('Append', ['System.Char[]'], [ToVariant(TCoreClrArray.ToNCCharArray(Value))]);
{$ELSE}
  InvokeMethod('Append', ['System.Char[]'], [TCoreClrArray.ToStringArray(Value)]);
{$ENDIF}
  Result := Self;
end;

function TStringBuilder.Append(Value: string): IStringBuilder;
begin
  InvokeMethod('Append', ['System.String'], [Value]);
  Result := Self;
end;

function TStringBuilder.Append(Value: Variant): IStringBuilder;
begin
  InvokeMethod('Append', ['System.Object'], [Value]);
  Result := Self;
end;

{$IFDEF FPC}
function TStringBuilder.AppendFormat(Format: string;
  Args: array of Variant): IStringBuilder;
begin
  InvokeMethod('AppendFormat', ['System.String', 'System.Object[]'], [Format, VarArrayOf(Args)]);
  Result := Self;
end;
{$ELSE}
{$IF CompilerVersion >= 27.0}
function TStringBuilder.AppendFormat(Format: string;
  Args: TArray<Variant>): IStringBuilder;
begin
  InvokeMethod('AppendFormat', ['System.String', 'System.Object[]'], [Format, Args]);
  Result := Self;
end;
{$ELSE}
function TStringBuilder.AppendFormat(Format: string;
  Args: array of Variant): IStringBuilder;
begin
  InvokeMethod('AppendFormat', ['System.String', 'System.Object[]'], [Format, VarArrayOf(Args)]);
  Result := Self;
end;
{$IFEND}
{$ENDIF}

function TStringBuilder.AppendLine(Value: string): IStringBuilder;
begin
  InvokeMethod('AppendLine', ['System.String'], [Value]);
  Result := Self;
end;

function TStringBuilder.AppendLine: IStringBuilder;
begin
  InvokeMethod('AppendLine');
  Result := Self;
end;

function TStringBuilder.Clear: IStringBuilder;
begin
  InvokeMethod('Clear');
  Result := Self;
end;

constructor TStringBuilder.Create(value: string; Capacity: Integer);
begin
  inherited Create('System.Text.StringBuilder', [value, Capacity]);
end;

function TStringBuilder.EnsureCapacity(Capacity: Integer): Integer;
begin
  Result := InvokeMethod('EnsureCapacity', ['System.Int32'], [Capacity]);
end;

{$IFNDEF FPC}
function TStringBuilder.Equals(Value: IStringBuilder): Boolean;
begin
  Result := InvokeMethod('Equals', ['System.Text.StringBuilder'], [Value]);
end;
{$ENDIF}

constructor TStringBuilder.Create(Capacity: Integer);
begin
{$IFDEF FPC}
  inherited Create('System.Text.StringBuilder', TCoreClrArray.CreateInstance([Capacity]));
{$ELSE}
  inherited Create('System.Text.StringBuilder', [Capacity]);
{$ENDIF}
end;

constructor TStringBuilder.Create(value: string);
begin
  inherited Create('System.Text.StringBuilder', [value]);
end;

constructor TStringBuilder.Create;
begin
  inherited Create('System.Text.StringBuilder', nil);
end;

function TStringBuilder.GetCapacity: Integer;
begin
  Result := GetPropertyValue('Capacity');
end;

function TStringBuilder.GetChar(Index: Integer): Char;
begin
  Result := VarToChar(GetPropertyValue('Chars', Index))
end;

function TStringBuilder.GetLength: Integer;
begin
  Result := GetPropertyValue('Length');
end;

function TStringBuilder.Remove(StartIndex, Length: Integer): IStringBuilder;
begin
  InvokeMethod('Remove', ['System.Int32', 'System.Int32'], [StartIndex, Length]);
  Result := Self;
end;

procedure TStringBuilder.SetCapacity(Value: Integer);
begin
  SetPropertyValue('Capacity', Value);
end;

procedure TStringBuilder.SetChar(Index: Integer; Value: Char);
begin
  SetPropertyValue('Chars', Index, Value);
end;

procedure TStringBuilder.SetLength(Value: Integer);
begin
  SetPropertyValue('Length', Value);
end;

function TStringBuilder.ToString: string;
begin
  Result := InvokeMethod('ToString');
end;

{ TCreateObjectDemo }

class procedure TCreateObjectDemo.Example1;
var
  nAlphabeticChars: Integer;
  nWhitespace: Integer;
  nPunctuation: Integer;
  ctr: integer;
  sb: IStringBuilder;
  ch: char;
begin
  nAlphabeticChars := 0;
  nWhitespace := 0;
  nPunctuation := 0;
  sb := TStringBuilder.Create('This is a simple sentence.');

  for ctr := 0 to sb.Length - 1 do
  begin
    ch := sb[ctr];
    if (IsLetter(ch)) then
    begin
      Inc(nAlphabeticChars);
      continue;
    end;
    if (IsWhiteSpace(ch)) then
    begin
      Inc(nWhitespace);
      continue;
    end;
    if (IsPunctuation(ch)) then
      Inc(nPunctuation);
  end;

  TConsole.WriteLine('The sentence ''{0}'' has:', sb);
  TConsole.WriteLine('   Alphabetic characters: {0}', nAlphabeticChars);
  TConsole.WriteLine('   White-space characters: {0}', nWhitespace);
  TConsole.WriteLine('   Punctuation characters: {0}', nPunctuation);

// The example displays the following output:
//       The sentence 'This is a simple sentence.' has:
//          Alphabetic characters: 21
//          White-space characters: 4
//          Punctuation characters: 1
end;

class procedure TCreateObjectDemo.Example2;
var
  sb1, sb2: IStringBuilder;
begin
  sb1 := TStringBuilder.Create('abc');
  sb2 := TStringBuilder.Create('abc', 16);

  TConsole.WriteLine();
  TConsole.WriteLine('a1) sb1.Length = {0}, sb1.Capacity = {1}', sb1.Length, sb1.Capacity);
  TConsole.WriteLine('a2) sb2.Length = {0}, sb2.Capacity = {1}', sb2.Length, sb2.Capacity);
  TConsole.WriteLine('a3) sb1.ToString() = ''{0}'', sb2.ToString() = ''{1}''', sb1.ToString(), sb2.ToString());
  TConsole.WriteLine('a4) sb1 equals sb2: {0}', sb1.Equals(sb2));

  TConsole.WriteLine();
  TConsole.WriteLine('Ensure sb1 has a capacity of at least 50 characters.');
  sb1.EnsureCapacity(50);

  TConsole.WriteLine();
  TConsole.WriteLine('b1) sb1.Length = {0}, sb1.Capacity = {1}', sb1.Length, sb1.Capacity);
  TConsole.WriteLine('b2) sb2.Length = {0}, sb2.Capacity = {1}', sb2.Length, sb2.Capacity);
  TConsole.WriteLine('b3) sb1.ToString() = ''{0}'', sb2.ToString() = ''{1}''', sb1.ToString(), sb2.ToString());
  TConsole.WriteLine('b4) sb1 equals sb2: {0}', sb1.Equals(sb2));

  TConsole.WriteLine();
  TConsole.WriteLine('Set the length of sb1 to zero.');
  TConsole.WriteLine('Set the capacity of sb2 to 51 characters.');
  sb1.Length := 0;
  sb2.Capacity := 51;

  TConsole.WriteLine();
  TConsole.WriteLine('c1) sb1.Length = {0}, sb1.Capacity = {1}', sb1.Length, sb1.Capacity);
  TConsole.WriteLine('c2) sb2.Length = {0}, sb2.Capacity = {1}', sb2.Length, sb2.Capacity);
  TConsole.WriteLine('c3) sb1.ToString() = ''{0}'', sb2.ToString() = ''{1}''', sb1.ToString(), sb2.ToString());
  TConsole.WriteLine('c4) sb1 equals sb2: {0}', sb1.Equals(sb2));

(*
The example displays the following output:

a1) sb1.Length = 3, sb1.Capacity = 16
a2) sb2.Length = 3, sb2.Capacity = 16
a3) sb1.ToString() = 'abc', sb2.ToString() = 'abc'
a4) sb1 equals sb2: True

Ensure sb1 has a capacity of at least 50 characters.

b1) sb1.Length = 3, sb1.Capacity = 50
b2) sb2.Length = 3, sb2.Capacity = 16
b3) sb1.ToString() = 'abc', sb2.ToString() = 'abc'
b4) sb1 equals sb2: False

Set the length of sb1 to zero.
Set the capacity of sb2 to 51 characters.

c1) sb1.Length = 0, sb1.Capacity = 50
c2) sb2.Length = 3, sb2.Capacity = 51
c3) sb1.ToString() = '', sb2.ToString() = 'abc'
c4) sb1 equals sb2: False
*)
end;

class procedure TCreateObjectDemo.Example3;
var
  sb: IStringBuilder;
  flag: Boolean;
begin
  flag := false;
  sb := TStringBuilder.Create();
  sb.Append('The value of the flag is ').Append(flag).Append('.');
  TConsole.WriteLine(sb.ToString());
// The example displays the following output:
//       The value of the flag is False.
end;

class procedure TCreateObjectDemo.Example4;
var
  sb: IStringBuilder;
  chars: TArray<WideChar>;
begin
  chars := TArray<WideChar>.Create('a', 'e', 'i', 'o', 'u');
  sb := TStringBuilder.Create();
  sb.Append('The characters in the array: ').Append(chars);
  TConsole.WriteLine(sb);
  // The example displays the following output:
  //      The characters in the array: aeiou
end;

//The following example demonstrates the AppendFormat method.
class procedure TCreateObjectDemo.Example5;

  procedure Show(sbs: IStringBuilder);
  begin
    TConsole.WriteLine(sbs.ToString());
    sbs.Length := 0;
  end;

var
  sb: IStringBuilder;
  var1: Integer;
  var2: Single;
  var3: string;
  var4: TArray<Variant>;
begin
  sb := TStringBuilder.Create();

  var1 := 111;
  var2 := 2.22;
  var3 := 'abcd';
  var4 := TArray<Variant>.Create(3, 4.4, 'X');

  TConsole.WriteLine();
  TConsole.WriteLine('StringBuilder.AppendFormat method:');
  sb.AppendFormat('1) {0}', TArray<Variant>.Create(var1));
  Show(sb);
  sb.AppendFormat('2) {0}, {1}', TArray<Variant>.Create(var1, var2));
  Show(sb);
  sb.AppendFormat('3) {0}, {1}, {2}', TArray<Variant>.Create(var1, var2, var3));
  Show(sb);
  sb.AppendFormat('4) {0}, {1}, {2}', var4);
  Show(sb);
(*
This example produces the following results:

StringBuilder.AppendFormat method:
1) 111
2) 111, 2.22
3) 111, 2.22, abcd
4) 3, 4.4, X
*)
end;

// This example demonstrates the StringBuilder.AppendLine()
// method.
class procedure TCreateObjectDemo.Example6;
var
  sb: IStringBuilder;
  line: string;
  number: Integer;
begin
  sb := TStringBuilder.Create();
  line := 'A line of text.';
  number := 123;

// Append two lines of text.
  sb.AppendLine('The first line of text.');
  sb.AppendLine(line);

// Append a new line, an empty string, and a null cast as a string.
  sb.AppendLine();
  sb.AppendLine('');
  sb.AppendLine('');

// Append the non-string value, 123, and two new lines.
  sb.Append(number).AppendLine().AppendLine();

// Append two lines of text.
  sb.AppendLine(line);
  sb.AppendLine('The last line of text.');

// Convert the value of the StringBuilder to a string and display the string.
  TConsole.WriteLine(sb.ToString());

(*
This example produces the following results:

The first line of text.
A line of text.



123

A line of text.
The last line of text.
*)

end;

//The following example instantiates a StringBuilder object with a string, calls the Clear method, and then appends a new string.
class procedure TCreateObjectDemo.Example7;
var
  sb: IStringBuilder;
begin
  sb := TStringBuilder.Create('This is a string.');
  TConsole.WriteLine('{0} ({1} characters)', sb.ToString(), sb.Length);

  sb.Clear();
  TConsole.WriteLine('{0} ({1} characters)', sb.ToString(), sb.Length);

  sb.Append('This is a second string.');
  TConsole.WriteLine('{0} ({1} characters)', sb.ToString(), sb.Length);

// The example displays the following output:
//       This is a string. (17 characters)
//        (0 characters)
//       This is a second string. (24 characters)
end;

//The following example demonstrates the Remove method.
class procedure TCreateObjectDemo.Example8;
var
  sb: IStringBuilder;
  rule1, rule2, str: string;
begin
  rule1 := '0----+----1----+----2----+----3----+----4---';
  rule2 := '01234567890123456789012345678901234567890123';
  str := 'The quick brown fox jumps over the lazy dog.';
  sb := TStringBuilder.Create(str);

  TConsole.WriteLine();
  TConsole.WriteLine('StringBuilder.Remove method');
  TConsole.WriteLine();
  TConsole.WriteLine('Original value:');
  TConsole.WriteLine(rule1);
  TConsole.WriteLine(rule2);
  TConsole.WriteLine('{0}', sb.ToString());
  TConsole.WriteLine();

  sb.Remove(10, 6); // Remove 'brown '

  TConsole.WriteLine('New value:');
  TConsole.WriteLine(rule1);
  TConsole.WriteLine(rule2);
  TConsole.WriteLine('{0}', sb.ToString());

(*
This example produces the following results:

StringBuilder.Remove method

Original value:
0----+----1----+----2----+----3----+----4---
01234567890123456789012345678901234567890123
The quick brown fox jumps over the lazy dog.

New value:
0----+----1----+----2----+----3----+----4---
01234567890123456789012345678901234567890123
The quick fox jumps over the lazy dog.

*)
end;

end.
