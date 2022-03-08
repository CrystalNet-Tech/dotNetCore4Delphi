program Collections;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SysUtils,
  StringArray in 'StringArray.pas',
  Enumerator in 'Enumerator.pas',
  ArrayList in 'ArrayList.pas',
  StringCollection in 'StringCollection.pas',
  StringDictionary in 'StringDictionary.pas',
  Stack in 'Stack.pas',
  Queue in 'Queue.pas',
  Hashtable in 'Hashtable.pas',
  SortedList in 'SortedList.pas',
  uConsole in '..\..\Shared\uConsole.pas',
  Collection in 'Collection.pas';

var
  NamesArray : IStringArray;
  NamesEnumerator: IIEnumerator;
  ArrayList: IArrayList;
  StringList: IStringCollection;
  StringDictionary: IStringDictionary;
  StringDictValuesEnumerator: IIEnumerator;
  SortedListValuesEnumerator: IIEnumerator;
  HashTableKeysEnumerator: IIEnumerator;
  Stack: IStack;
  Queue: IQueue;
//  BitArray: IBitArray;
  HashTable: IHashtable;
  SortedList: ISortedList;
  I: Integer;

begin
  try
    //========================================================================
    //                    Using IEnumerable Interface
    //========================================================================
    //An enumerator is an object that provides a forward, read-only cursor for a set of items.
    //The IEnumerable interface has one method called the GetEnumerator method.
    //This method returns an object that implements the IEnumerator interface.
    //The code snippet below illustrates how an enumerator can be used to iterate
    //though a list or collection of items.

    NamesArray := TStringArray.Create(2);
    NamesArray[0] := 'Joydip';
    NamesArray[1] := 'Jini';
    NamesEnumerator := NamesArray.GetEnumerator;
    while NamesEnumerator.MoveNext do
      TConsole.WriteLine(NamesEnumerator.Current);

    //Note that the GetEnumerator method returns an enumerator object each time it is called.
    //Further, the loop contains the TConsole.WriteLine statement in its re-initializer portion,
    //which is perfectly valid. The condition being evaluated is whether the MoveNext method
    //returns a value of true. The MoveNext method returns true as long as there are items in
    //the collection. The Current property returns the current object and is automatically typecast
    //to string by making a call to the ToString method implicitly.


    //========================================================================
    //                        Using ArrayList Class
    //========================================================================
    //The ArrayList Class is a dynamic array of heterogeneous objects. Note that in an array
    //we can store only objects of the same type. In an ArrayList, however, we can have different
    //type of objects; these in turn would be stored as object type only.  We can have an ArrayList
    //object that stores integer, float, string, etc., but all these objects would only be stored as
    //object type. An ArrayList uses its indexes to refer to a particular object stored in its collection.
    //The Count property gives the total number of items stored in the ArrayList object.
    //The Capacity property gets or sets the number of items that the ArrayList object can contain.
    //Objects are added using the Add method of the ArrayList and removed using its Remove method.
    //An example of usage of an ArrayList is given below.

    ArrayList := TArrayList.Create;
    ArrayList.Add('Joydip');
    ArrayList.Add(100);
    ArrayList.Add(20.5);
    for I := 0 to ArrayList.Count - 1 do
      TConsole.WriteLine(ArrayList[I]);

    //It is to be noted here that the initial capacity of an ArrayList is 16, which is increased once the
    //17th item is stored onto it. This repeated memory allocation and copying of the items can be quite
    //expensive in some situations. For performance reasons we can set the initial capacity of the object
    //of an ArrayList by using the Capacity property or an overloaded constructor of the ArrayList class.
    //This is shown in the example below.

    ArrayList := TArrayList.Create;
    ArrayList.Capacity := 3;
    ArrayList.Add('Joydip');
    ArrayList.Add(100);
    ArrayList.Add(20.5);
    for I := 0 to ArrayList.Count - 1 do
      TConsole.WriteLine(ArrayList[I]);


    //========================================================================
    //                  Using StringCollection Class
    //========================================================================
    //The StringCollection Class implements the IList interface and is like an ArrayList of strings.
    //The following code example shows how we can work with a StringCollection class.

    StringList := TStringCollection.Create;
    StringList.Add('Manashi');
    StringList.Add('Joydip');
    StringList.Add('Jini');
    StringList.Add('Piku');

    for I := 0 to StringList.Count - 1 do
      TConsole.WriteLine(StringList[I]);


    //========================================================================
    //                 Using StringDictionary Class
    //========================================================================
    //Similar to the StringCollection Class we have the StringDictionary Class,
    //which is just a Hashtable that has its keys as strings only. Remember that a Hashtable
    //can contain any object type in its key. The following code shows how we can work with a
    //StringDictionary Class.

    StringDictionary := TStringDictionary.Create;
    StringDictionary.Add('A', 'Manashi');
    StringDictionary.Add('B','Joydip');
    StringDictionary.Add('C','Jini');
    StringDictionary.Add('D','Piku');

    StringDictValuesEnumerator := StringDictionary.Values.GetEnumerator;
    while StringDictValuesEnumerator.MoveNext do
      TConsole.WriteLine(StringDictValuesEnumerator.Current);


    //========================================================================
    //                        Using Stack Class
    //========================================================================
    //The _Stack Class is one that provides a Last-in-First-out (LIFO) collection of items
    //of the System.Object type. The last added item is always at the top of the Stack and is also
    //the first one to be removed. The following code sample shows how we can use a Stack class for
    //LIFO operation on its collection of items.

    Stack := TStack.Create;
    Stack.Push('Joydip');
    Stack.Push('Steve');
    Stack.Push('Jini');
    while (Stack.Count > 0) do
      TConsole.WriteLine(Stack.Pop);

    //The Push method is responsible for storing items in the Stack and the method Pop
    //removes them one at a time from the top of the Stack.


    //========================================================================
    //                   Using Queue Class
    //========================================================================
    //Unlike the Stack Class, the Queue is a data structure that provides a First-in-First-out
    //collection of items of the Object type. The newly added items are stored at the end or
    //the rear of the Queue and items are deleted from the front of the Queue.
    //The following code shows how the Queue class can be used.

    Queue := TQueue.Create;
    Queue.Enqueue('Joydip');
    Queue.Enqueue('Steve');
    Queue.Enqueue('Jini');
    while (Queue.Count > 0) do
      TConsole.WriteLine(Queue.Dequeue);

    //The Enqueue method is responsible for storing items at the rear of the Queue and the method Dequeue
    //removes them one at a time from the front of the Queue.


    //========================================================================
    //                     Using Hashtable Class
    //========================================================================
    //The Hashtable provides a faster way of storage and retrieval of items of the object type.
    //The Hashtable class provides support for key based searching. These keys are unique hash codes that
    //are unique to a specific type.  The GetHashCode method of the Hashtable class returns the hash code
    //for an object instance. The following code snippet shows how we can use a Hashtable Class.

    HashTable := THashtable.Create;
    HashTable.Add(1, 'Joydip');
    HashTable.Add(2, 'Manashi');
    HashTable.Add(3, 'Jini');
    HashTable.Add(4, 'Piku');
    TConsole.WriteLine('The keys are:--');
    HashTableKeysEnumerator := HashTable.Keys.GetEnumerator;
    while HashTableKeysEnumerator.MoveNext do
      TConsole.WriteLine(HashTableKeysEnumerator.Current);


    //========================================================================
    //                     Using SortedList Class
    //========================================================================
    //The SortedList Class allows items of the Object type to be placed in the
    //collection using key value pairs and, at the same time, supports sorting.
    //The following code shows how we can use a SortedList.

    SortedList := TSortedList.Create;
    SortedList.Add(1, 'Manashi');
    SortedList.Add(3, 'Joydip');
    SortedList.Add(2, 'Jini');
    SortedList.Add(4, 'Piku');

    TConsole.WriteLine('Displaying thenames');

    SortedListValuesEnumerator:= SortedList.Values.GetEnumerator;
    while SortedListValuesEnumerator.MoveNext do
      TConsole.WriteLine(SortedListValuesEnumerator.Current);

    //The output of the above code is:
    //  Manashi
    //  Jini
    //  Joydip
    //  Piku
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  TConsole.ReadKey;
end.

