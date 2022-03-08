program BasicExample;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
	System.SysUtils,
{$ELSE}
	SysUtils,
{$IFEND}
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Console,
  CrystalNet.Runtime.Enums,CrystalNet.IO.FileSystem,CrystalNet.IO.FileSystem.Intf;


  procedure MathClass;
  begin
    TConsole.NClass.WriteLine('Using Math Class Methods/Properties..');
    TConsole.NClass.WriteLine('Exp(50):              {0}', TMath.NClass.Exp(50));
    TConsole.NClass.WriteLine('PI:                   {0}', TMath.NClass.PI);
    TConsole.NClass.WriteLine('Cos(50):              {0}', TMath.NClass.Cos(50));
    TConsole.NClass.WriteLine('Log(50):              {0}', TMath.NClass.Log(50));
    TConsole.NClass.WriteLine('Pow(50, 3):           {0}', TMath.NClass.Pow(50, 3));
    TConsole.NClass.WriteLine('Round(234.094833, 2): {0}', TMath.NClass.Round(234.094833, 2));
    TConsole.NClass.WriteLine('Truncate(234.094833): {0}', TMath.NClass.Truncate(234.094833));
    TConsole.NClass.WriteLine('Sqrt(16):             {0}', TMath.NClass.Sqrt(16));
    TConsole.NClass.WriteLine;
    TConsole.NClass.WriteLine;
  end;

  procedure RandomClass;
  var
    m_random: IRandom;
  begin
    m_random := TRandom.Create;
    TConsole.NClass.WriteLine('Using Random Class Methods/Properties..');
    TConsole.NClass.WriteLine('Next Value: {0}', m_random.Next);
    TConsole.NClass.WriteLine('NextDouble: {0}', m_random.NextDouble);
    TConsole.NClass.WriteLine('Next(2000): {0}', m_random.Next(2000));
    TConsole.NClass.WriteLine;
    TConsole.NClass.WriteLine;
  end;

  procedure GuidClass;
  begin
    TConsole.NClass.WriteLine('Using Guid Class Methods/Properties..');
    TConsole.NClass.WriteLine('Empty Guid: {0}', TGuid.NClass.Empty.ToString);
    TConsole.NClass.WriteLine('NewGuid:    {0}', TGuid.NClass.NewGuid.ToString);
    TConsole.NClass.WriteLine;
    TConsole.NClass.WriteLine;
  end;

  procedure EnvironmentClass;
  begin
    TConsole.NClass.WriteLine('Using Environment Class Methods/Properties..');
    TConsole.NClass.WriteLine('CommandLine:            {0}', TEnvironment.NClass.CommandLine);
    TConsole.NClass.WriteLine('CurrentDirectory:       {0}', TEnvironment.NClass.CurrentDirectory);
    TConsole.NClass.WriteLine('ExitCode:               {0}', TEnvironment.NClass.ExitCode);
    TConsole.NClass.WriteLine('Is64BitOperatingSystem: {0}', TEnvironment.NClass.Is64BitOperatingSystem);
    TConsole.NClass.WriteLine('Is64BitProcess:         {0}', TEnvironment.NClass.Is64BitProcess);
    TConsole.NClass.WriteLine('MachineName:            {0}', TEnvironment.NClass.MachineName);
    TConsole.NClass.WriteLine('OSVersion:              {0}', TEnvironment.NClass.OSVersion);
    TConsole.NClass.WriteLine('ProcessorCount:         {0}', TEnvironment.NClass.ProcessorCount);
    TConsole.NClass.WriteLine('StackTrace:             {0}', TEnvironment.NClass.StackTrace);
    TConsole.NClass.WriteLine('SystemDirectory:        {0}', TEnvironment.NClass.SystemDirectory);
    TConsole.NClass.WriteLine('SystemPageSize:         {0}', TEnvironment.NClass.SystemPageSize);
    TConsole.NClass.WriteLine('UserName:               {0}', TEnvironment.NClass.UserName);
    TConsole.NClass.WriteLine('GetFolderPath:          {0}', TEnvironment.NClass.GetFolderPath(TSpecialFolder.sfMyDocuments));
    TConsole.NClass.WriteLine('WorkingSet:             {0}', TEnvironment.NClass.WorkingSet);
    TConsole.NClass.WriteLine;
    TConsole.NClass.WriteLine;
  end;

  procedure FileInfoClass;
  var
    m_fileInfo : IFileInfo;
  begin
    m_fileInfo := TFileInfo.Create('sqlnet.log');
    TConsole.NClass.WriteLine('Using FileInfo Class Methods/Properties..');
    TConsole.NClass.WriteLine('Name:              {0}', m_fileInfo.Name);
    TConsole.NClass.WriteLine('DirectoryName:     {0}', m_fileInfo.DirectoryName);
    TConsole.NClass.WriteLine('IsReadOnly:        {0}', m_fileInfo.IsReadOnly);
    TConsole.NClass.WriteLine('Exists:            {0}', m_fileInfo.Exists);
    TConsole.NClass.WriteLine('FullName:          {0}', m_fileInfo.FullName);
    TConsole.NClass.WriteLine('Extension:         {0}', m_fileInfo.Extension);
    TConsole.NClass.WriteLine('CreationTime:      {0}', m_fileInfo.CreationTime);
    TConsole.NClass.WriteLine('CreationTimeUtc:   {0}', m_fileInfo.CreationTimeUtc);
    TConsole.NClass.WriteLine('LastAccessTime:    {0}', m_fileInfo.LastAccessTime);
    TConsole.NClass.WriteLine('LastAccessTimeUtc: {0}', m_fileInfo.LastAccessTimeUtc);
    TConsole.NClass.WriteLine('LastWriteTime:     {0}', m_fileInfo.LastWriteTime);
    TConsole.NClass.WriteLine('LastWriteTimeUtc:  {0}', m_fileInfo.LastWriteTimeUtc);
    TConsole.NClass.WriteLine('Length:            {0}', m_fileInfo.Length);
    TConsole.NClass.WriteLine('ReadLine:          {0}', m_fileInfo.OpenText.ReadToEnd);
    TConsole.NClass.WriteLine;
    TConsole.NClass.WriteLine;
  end;
  
begin
  TConsole.NClass.WriteLine('Hello! Welcome to .Net Core for Delphi.');
  TConsole.NClass.WriteLine('=======================================');
  TConsole.NClass.WriteLine('This program demonstrate how to use basic .Net core classes in Delphi');
  TConsole.NClass.WriteLine;
  try
    MathClass;
    RandomClass;
    GuidClass;
    EnvironmentClass;
    FileInfoClass;
  except
    on E: Exception do
      TConsole.NClass.WriteLine('Exception: {0}', e.Message);
  end;
  TConsole.NClass.ReadKey;
end.

