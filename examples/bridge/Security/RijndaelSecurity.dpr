program RijndaelSecurity;

{$APPTYPE CONSOLE}

{$R *.res}

uses
{$IF CompilerVersion > 22}
  System.SysUtils,
{$ELSE}
  SysUtils,
{$IFEND }
  CrystalNet.Security.Cryptography.Algorithms, CrystalNet.Security.Cryptography.Algorithms.Intf,
  CrystalNet.Security.Cryptography.Primitives.Intf, CrystalNet.Security.Cryptography.Primitives,
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Security.Cryptography.Primitives.Enums;

function EncryptStringToBytes(plainText: string; Key, IV: TArray<Byte>): TArray<Byte>;
var
  rijAlg: IRijndaelManaged;
  encryptor: IICryptoTransform;
  msEncrypt: IMemoryStream;
  csEncrypt: ICryptoStream;
  swEncrypt: IStreamWriter;
begin
  // Check arguments.
  if plainText.Length <= 0 then
    raise Exception.Create('plainText argument is empty');

  if (Key = nil) or (Length(Key) <= 0) then
    raise Exception.Create('Key argument is empty or nil');

  if (IV = nil) or (Length(IV) <= 0) then
    raise Exception.Create('IV argument is empty or nil');

  // Create an RijndaelManaged object with the specified key and IV.
  rijAlg := TRijndaelManaged.Create;
  rijAlg.Key := Key;
  rijAlg.IV := IV;

  // Create a decrytor to perform the stream transform.
  encryptor := rijAlg.CreateEncryptor(rijAlg.Key, rijAlg.IV);

  // Create the streams used for encryption.
  msEncrypt := TMemoryStream.Create;
  csEncrypt := TCryptoStream.Create(msEncrypt, encryptor, TCryptoStreamMode.csmWrite);

  swEncrypt := TStreamWriter.Create(csEncrypt);
  //Write all data to the stream.
  swEncrypt.Write(plainText);
  swEncrypt.Close;

  // Return the encrypted bytes from the memory stream.
  result := msEncrypt.ToArray;
  msEncrypt.Close;
  csEncrypt.Close;
  swEncrypt.Close;
end;

function DecryptStringFromBytes(cipherText, Key, IV: TArray<Byte>): string;
var
  rijAlg: IRijndaelManaged;
  decryptor: IICryptoTransform;
  msDecrypt: IMemoryStream;
  csDecrypt: ICryptoStream;
  srDecrypt: IStreamReader;
begin
  // Check arguments.
  if (cipherText = nil) or (Length(cipherText) <= 0) then
    raise Exception.Create('cipherText argument is empty or nil');

  if (Key = nil) or (Length(Key) <= 0) then
    raise Exception.Create('Key argument is empty or nil');

  if (IV = nil) or (Length(IV) <= 0) then
    raise Exception.Create('IV argument is empty or nil');

  // Create an RijndaelManaged object
  // with the specified key and IV.
  rijAlg := TRijndaelManaged.Create;
  rijAlg.Key := Key;
  rijAlg.IV := IV;

  // Create a decrytor to perform the stream transform.
  decryptor := rijAlg.CreateDecryptor(rijAlg.Key, rijAlg.IV);

  // Create the streams used for decryption.
  msDecrypt := TMemoryStream.Create(cipherText);

  csDecrypt := TCryptoStream.Create(msDecrypt, decryptor, csmRead);

  srDecrypt := TStreamReader.Create(csDecrypt);

  // Read the decrypted bytes from the decrypting stream and place them in a string.
  result := srDecrypt.ReadToEnd;

  msDecrypt.Close;
  csDecrypt.Close;
  srDecrypt.Close;
end;


var
  key: Char;
  original,
  roundtrip: string;
  myRijndael: IRijndaelManaged;
  encrypted: TArray<Byte>;
begin
  try
    original := 'Here is some data to encrypt!';

    // Create a new instance of the RijndaelManaged
    // class.  This generates a new key and initialization
    // vector (IV).
    myRijndael := TRijndaelManaged.Create;
    myRijndael.GenerateKey;
    myRijndael.GenerateIV;

    // Encrypt the string to an array of bytes.
    encrypted := EncryptStringToBytes(original, myRijndael.Key, myRijndael.IV);

    // Decrypt the bytes to a string.
    roundtrip := DecryptStringFromBytes(encrypted, myRijndael.Key, myRijndael.IV);

    //Display the original data and the decrypted data.
    Writeln('Original:   ', original);
    Writeln('Round Trip: ', roundtrip);

    Writeln('Press any key to continue.....');
    Readln(key);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
