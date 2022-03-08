program GenericList;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  uConsole in '..\..\Shared\uConsole.pas',
  List in 'List.pas';

var
  Dinosaurs: IList<string>;
  I: Integer;

begin
  try
    Dinosaurs := TList<string>.Create();

    TConsole.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    Dinosaurs.Add('Tyrannosaurus');
    Dinosaurs.Add('Amargasaurus');
    Dinosaurs.Add('Mamenchisaurus');
    Dinosaurs.Add('Deinonychus');
    Dinosaurs.Add('Compsognathus');
    TConsole.WriteLine();
    for I := 0 to Dinosaurs.Count - 1 do
      TConsole.WriteLine(Dinosaurs[I]);

    TConsole.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    TConsole.WriteLine('Count: {0}', Dinosaurs.Count);

    TConsole.WriteLine('Contains(''Deinonychus''): {0}', Dinosaurs.Contains('Deinonychus'));

    TConsole.WriteLine('Insert(2, ''Compsognathus'')');
    Dinosaurs.Insert(2, 'Compsognathus');

    TConsole.WriteLine();
    for I := 0 to Dinosaurs.Count - 1 do
      TConsole.WriteLine(Dinosaurs[I]);

    // Shows accessing the list using the Item property.
    TConsole.WriteLine('dinosaurs[3]: {0}', Dinosaurs[3]);

    TConsole.WriteLine('Remove(''Compsognathus'')');
    Dinosaurs.Remove('Compsognathus');

    TConsole.WriteLine();
    for I := 0 to Dinosaurs.Count - 1 do
      TConsole.WriteLine(Dinosaurs[I]);

    Dinosaurs.TrimExcess();
    TConsole.WriteLine('TrimExcess()');
    TConsole.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    TConsole.WriteLine('Count: {0}', Dinosaurs.Count);

    Dinosaurs.Clear();
    TConsole.WriteLine('Clear()');
    TConsole.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    TConsole.WriteLine('Count: {0}', Dinosaurs.Count);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  TConsole.ReadKey;
end.
