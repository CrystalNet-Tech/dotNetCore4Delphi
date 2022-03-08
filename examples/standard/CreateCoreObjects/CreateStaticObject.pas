unit CreateStaticObject;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses CNCoreClrLib.Intf, CNCoreClrLib.ObjectMgr;

type

  //Provides constants and static methods for trigonometric, logarithmic, and other common mathematical functions.
  TMath = class
  private
    class var FMath: TCoreClrStaticObject;
    class function GetPI: Double; static;
  public
    class constructor Create;
    class destructor Destroy;

    class function Abs(Value: Double): Double; static;
    class function Floor(Value: Double): Double; static;
    class function Ceiling(Value: Double): Double; static;
    class function Min(Value1, Value2: Double): Double; static;
    class function Max(Value1, Value2: Double): Double; static;
    class function Pow(x, y: Double): Double; static;
    class function Round(Value: Double): Double; static;
    class function Truncate(Value: Double): Double; static;

    class property PI: Double read GetPI;
  end;

  TCreateStaticObjectDemo = class
  public
    class procedure Abs; static;
    class procedure Floor; static;
    class procedure Round; static;
    class procedure Truncate; static;
    class procedure PI; static;
  end;



implementation

uses CNCoreClrLib.ArrayMgr, uConsole;

{ TMath }

class function TMath.Abs(Value: Double): Double;
begin
  Result := FMath.InvokeMethod('Abs', ['System.Double'], [Value]);
end;

class function TMath.Ceiling(Value: Double): Double;
begin
  Result := FMath.InvokeMethod('Ceiling', ['System.Double'], [Value]);
end;

class constructor TMath.Create;
begin
  FMath := TCoreClrStaticObject.Create('System.Math');
end;

class destructor TMath.Destroy;
begin
  FMath.Free;
end;

class function TMath.Floor(Value: Double): Double;
begin
  Result := FMath.InvokeMethod('Floor', ['System.Double'], [Value]);
end;

class function TMath.GetPI: Double;
begin
  Result := FMath.GetFieldValue('PI');
end;

class function TMath.Max(Value1, Value2: Double): Double;
begin
  Result := FMath.InvokeMethod('Max', ['System.Double', 'System.Double'], [Value1, Value2]);
end;

class function TMath.Min(Value1, Value2: Double): Double;
begin
  Result := FMath.InvokeMethod('Min', ['System.Double', 'System.Double'], [Value1, Value2]);
end;

class function TMath.Pow(x, y: Double): Double;
begin
  Result := FMath.InvokeMethod('Pow', ['System.Double', 'System.Double'], [x, y]);
end;

class function TMath.Round(Value: Double): Double;
begin
  Result := FMath.InvokeMethod('Round', ['System.Double'], [Value]);
end;

class function TMath.Truncate(Value: Double): Double;
begin
  Result := FMath.InvokeMethod('Truncate', ['System.Double'], [Value]);
end;

{ TCreateStaticObjectDemo }

//class procedure TCreateStaticObjectDemo.DisplayProviderInvariantNames;
//var
//  m_name: string;
//begin
//  TConsole.WriteLine(TMath.FMath.IsStatic);
//  for m_name in TMath.GetProviderInvariantNames do
//    TConsole.WriteLine(m_name);
//end;

{ TCreateStaticObjectDemo }

//The following example uses the Abs(Double) method to
//get the absolute value of a number of Double values.
class procedure TCreateStaticObjectDemo.Abs;
var
  doubles: TArray<Double>;
  value: Double;
begin
  doubles := TArray<Double>.Create(1.797693134E+308, 16.354e-17, 15.098123, 0,
                     -19.069713, -15.058e18, -1.797693134E+308);

  for value in doubles do
    TConsole.WriteLine('Abs({0}) = {1}', value, TMath.Abs(value));

// The example displays the following output:
//       Abs(1.797693134E+308) = 1.797693134E+308
//       Abs(1.6354E-16) = 1.6354E-16
//       Abs(15.098123) = 15.098123
//       Abs(0) = 0
//       Abs(-19.069713) = 19.069713
//       Abs(-1.5058E+19) = 1.5058E+19
//       Abs(-1.797693134E+308) = 1.797693134E+308
end;


//The following example illustrates the Math.Floor(Double) method and contrasts it
//with the Ceiling(Double) method.
class procedure TCreateStaticObjectDemo.Floor;
var
  doubles: TArray<Double>;
  value: Double;
begin
  doubles := TArray<Double>.Create(7.03, 7.64, 0.12, -0.12, -7.1, -7.6);
  TConsole.WriteLine('  Value          Ceiling          Floor\n');
  for value in doubles do
     TConsole.WriteLine('{0,7} {1,16} {2,14}', [value, TMath.Ceiling(value), TMath.Floor(value)]);

// The example displays the following output to the console:
//         Value          Ceiling          Floor
//
//          7.03                8              7
//          7.64                8              7
//          0.12                1              0
//         -0.12                0             -1
//          -7.1               -7             -8
//          -7.6               -7             -8
end;


//The following example uses the Pow method to calculate the value that results from
//raising 2 to a power ranging from 0 to 32.
class procedure TCreateStaticObjectDemo.PI;
begin
  TConsole.WriteLine(TMath.PI);
end;

class procedure TCreateStaticObjectDemo.Round;
begin
  TConsole.WriteLine('Classic Math.Round in CSharp');
  TConsole.WriteLine(TMath.Round(4.4)); // 4
  TConsole.WriteLine(TMath.Round(4.5)); // 4
  TConsole.WriteLine(TMath.Round(4.6)); // 5
  TConsole.WriteLine(TMath.Round(5.5)); // 6
end;

class procedure TCreateStaticObjectDemo.Truncate;
var
  floatNumber: double;
begin

  floatNumber := 32.7865;
  // Displays 32
  TConsole.WriteLine(TMath.Truncate(floatNumber));

  floatNumber := -32.9012;
  // Displays -32
  TConsole.WriteLine(TMath.Truncate(floatNumber));
end;

end.
