program DateTimeInfo;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
	System.SysUtils,
{$ELSE}
	SysUtils,
{$IFEND}
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Console;

var
  DateTimeFmt : IDateTimeFormatInfo;
  Calender : ICalendar;
  MonthNames : TArray<String>;
  I : Integer;
begin
  DateTimeFmt := TDateTimeFormatInfo.Create;
  Calender := DateTimeFmt.Calendar;
  MonthNames := DateTimeFmt.MonthNames;

  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('=======================================');
  TConsole.NClass.WriteLine('This program prints out Names of Month and Calender Info.');
  TConsole.NClass.WriteLine;
  TConsole.NClass.WriteLine('Names of Month :');
  for I := 0 to Length(MonthNames) - 1 do begin
    TConsole.NClass.Write('   {0} - {1}', I+1, MonthNames[I]);
    TConsole.NClass.WriteLine;
  end;
  TConsole.NClass.WriteLine;
  TConsole.NClass.WriteLine('Calendar Info :');
  TConsole.NClass.WriteLine('   {0} - {1}', 'DayOfMonth', Calender.GetDayOfMonth(Now));
  TConsole.NClass.WriteLine('   {0} - {1}', 'GetDayOfWeek', Calender.GetDayOfWeek(Now));
  TConsole.NClass.WriteLine('   {0} - {1}', 'GetDayOfYear', Calender.GetDayOfYear(Now));
  TConsole.NClass.WriteLine('   {0} - {1}', 'GetDaysInMonth', Calender.GetDaysInMonth(2015, 4));
  TConsole.NClass.WriteLine('   {0} - {1}', 'GetDaysInYear', Calender.GetDaysInYear(2015));
  TConsole.NClass.WriteLine('   {0} - {1}', 'GetMonth', Calender.GetMonth(Now));
  TConsole.NClass.WriteLine('   {0} - {1}', 'AddMonths', Calender.AddMonths(Now, 8));
  TConsole.NClass.ReadKey;
end.
