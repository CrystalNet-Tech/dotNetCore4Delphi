program GenericDictionary;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  Dictionary in 'Dictionary.pas',
  uConsole in '..\..\Shared\uConsole.pas';

var
  OpenWith: IDictionary<string, string>;
  OpenWithEnumerator: IDictionaryEnumerator<string, string>;
  ValueCollection: IDictionaryEnumerable<string>;
  ValueCollEnumerator: IDictionaryEnumerator<string>;
  keyCollection: IDictionaryEnumerable<string>;
  keyCollEnumerator: IDictionaryEnumerator<string>;
  Value: string;
begin
  try
    // Create a new dictionary of strings, with string keys.
    OpenWith := TDictionary<string, string>.Create();

    // Add some elements to the dictionary. There are no
    // duplicate keys, but some of the values are duplicates.
    OpenWith.Add('txt', 'notepad.exe');
    OpenWith.Add('bmp', 'paint.exe');
    OpenWith.Add('dib', 'paint.exe');
    OpenWith.Add('rtf', 'wordpad.exe');

    // The Add method throws an exception if the new key is
    // already in the dictionary.
    try
      OpenWith.Add('txt', 'winword.exe');
    except //(ArgumentException)
      TConsole.WriteLine('An element with Key = ''txt'' already exists.');
    end;

    // The Item property is another name for the indexer, so you
    // can omit its name when accessing elements.
    TConsole.WriteLine('For key = ''rtf'', value = {0}.', OpenWith['rtf']);

    // The indexer can be used to change the value associated
    // with a key.
    OpenWith['rtf'] := 'winword.exe';
    TConsole.WriteLine('For key = ''rtf'', value = {0}.', OpenWith['rtf']);

    // If a key does not exist, setting the indexer for that key
    // adds a new key/value pair.
    OpenWith['doc'] := 'winword.exe';

    // The indexer throws an exception if the requested key is
    // not in the dictionary.
    try
      TConsole.WriteLine('For key = ''tif'', value = {0}.', OpenWith['tif']);
    except //(KeyNotFoundException)
      TConsole.WriteLine('Key = ''tif'' is not found.');
    end;

    // When a program often has to try keys that turn out not to
    // be in the dictionary, TryGetValue can be a more efficient
    // way to retrieve values.
    if (OpenWith.TryGetValue('tif', Value)) then
      TConsole.WriteLine('For key = ''tif'', value = {0}.', Value)
    else
      TConsole.WriteLine('Key = ''tif'' is not found.');

    // ContainsKey can be used to test keys before inserting them.
    if (not OpenWith.ContainsKey('ht')) then
    begin
      OpenWith.Add('ht', 'hypertrm.exe');
      TConsole.WriteLine('Value added for key = ''ht'': {0}', OpenWith['ht']);
    end;

    // When you use when loop to enumerate dictionary elements from GetEnumerator,
    // the elements are retrieved as KeyValuePair objects.
    TConsole.WriteLine();
    OpenWithEnumerator := OpenWith.GetEnumerator;
    while OpenWithEnumerator.MoveNext do
      TConsole.WriteLine('Key = {0}, Value = {1}', OpenWithEnumerator.Current.Key, OpenWithEnumerator.Current.Value);

    // To get the values alone, use the Values property.
    ValueCollection := OpenWith.Values;
    ValueCollEnumerator := ValueCollection.GetEnumerator;

    // The elements of the ValueCollection are strongly typed
    // with the type that was specified for dictionary values.
    TConsole.WriteLine();
    while ValueCollEnumerator.MoveNext do
      TConsole.WriteLine('Value = {0}', ValueCollEnumerator.Current);

    // To get the keys alone, use the Keys property.
    keyCollection := OpenWith.Keys;
    keyCollEnumerator := keyCollection.GetEnumerator;

    // The elements of the KeyCollection are strongly typed
    // with the type that was specified for dictionary keys.
    TConsole.WriteLine();
    while keyCollEnumerator.MoveNext do
      TConsole.WriteLine('Key = {0}', keyCollEnumerator.Current);

    // Use the Remove method to remove a key/value pair.
    TConsole.WriteLine('Remove(''doc'')');
    OpenWith.Remove('doc');

    if (not OpenWith.ContainsKey('doc')) then
      TConsole.WriteLine('Key ''doc'' is not found.');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  TConsole.ReadKey;
end.
