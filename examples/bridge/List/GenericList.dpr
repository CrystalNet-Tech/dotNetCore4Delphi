program GenericList;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
  System.SysUtils,
{$ELSE}
  SysUtils,
{$IFEND }
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Console;

var
  Dinosaurs: IList<string>;
  I: Integer;

begin
  try
    Dinosaurs := TList<string>.Create();

    TConsole.NClass.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    Dinosaurs.Add('Tyrannosaurus');
    Dinosaurs.Add('Amargasaurus');
    Dinosaurs.Add('Mamenchisaurus');
    Dinosaurs.Add('Deinonychus');
    Dinosaurs.Add('Compsognathus');
    TConsole.NClass.WriteLine();
    for I := 0 to Dinosaurs.Count - 1 do
      TConsole.NClass.WriteLine(Dinosaurs[I]);

    TConsole.NClass.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    TConsole.NClass.WriteLine('Count: {0}', Dinosaurs.Count);

    TConsole.NClass.WriteLine('Contains(''Deinonychus''): {0}', Dinosaurs.Contains('Deinonychus'));

    TConsole.NClass.WriteLine('Insert(2, ''Compsognathus'')');
    Dinosaurs.Insert(2, 'Compsognathus');

    TConsole.NClass.WriteLine();
    for I := 0 to Dinosaurs.Count - 1 do
      TConsole.NClass.WriteLine(Dinosaurs[I]);

    // Shows accessing the list using the Item property.
    TConsole.NClass.WriteLine('dinosaurs[3]: {0}', Dinosaurs[3]);

    TConsole.NClass.WriteLine('Remove(''Compsognathus'')');
    Dinosaurs.Remove('Compsognathus');

    TConsole.NClass.WriteLine();
    for I := 0 to Dinosaurs.Count - 1 do
      TConsole.NClass.WriteLine(Dinosaurs[I]);

    Dinosaurs.TrimExcess();
    TConsole.NClass.WriteLine('TrimExcess()');
    TConsole.NClass.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    TConsole.NClass.WriteLine('Count: {0}', Dinosaurs.Count);

    Dinosaurs.Clear();
    TConsole.NClass.WriteLine('Clear()');
    TConsole.NClass.WriteLine('Capacity: {0}', Dinosaurs.Capacity);
    TConsole.NClass.WriteLine('Count: {0}', Dinosaurs.Count);
    TConsole.NClass.ReadKey;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
