program ListFilesInDir;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
  System.SysUtils,
{$ELSE}
  SysUtils,
{$IFEND }
  CrystalNet.Console, CrystalNet.IO.FileSystem, CrystalNet.IO.FileSystem.Intf;

var
  DirInfo : IDirectoryInfo;
  FileInfos : TArray<IFileInfo>;
  DirName : string;
  I : Integer;
begin
  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('======================================');
  TConsole.NClass.WriteLine('This program lists all the files in a directory.');
  TConsole.NClass.WriteLine;
  TConsole.NClass.Write('Please enter the name of a directory: ');
  DirName := TConsole.NClass.ReadLine;
  try
    DirInfo := TDirectoryInfo.Create(DirName);
    try
      FileInfos := DirInfo.GetFiles;
      for I := 0 to Length(FileInfos) - 1 do begin
        TConsole.NClass.WriteLine('{0}, {1}', FileInfos[I].Name, FileInfos[I].Length);
      end;
    finally
      FileInfos := nil;
      DirInfo := nil;
    end;
  except
    on E: Exception do
      TConsole.NClass.WriteLine('Exception : {0}', E.Message);
  end;
  TConsole.NClass.ReadKey;
end.
