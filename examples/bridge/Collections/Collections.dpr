program Collections;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
  System.SysUtils,
{$ELSE}
  SysUtils,
{$IFEND }
  CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Console,
  CrystalNet.Collections.Intf, CrystalNet.Collections, CrystalNet.Collections.Specialized,
  CrystalNet.Collections.Specialized.Intf, CrystalNet.Collections.NonGeneric,
  CrystalNet.Collections.NonGeneric.Intf;

var
  NamesArray : TArray<String>;
  NamesEnumerator: IIEnumerator;
  ArrayList: IArrayList;
  StringList: IStringCollection;
  StringDictionary: IStringDictionary;
  StringDictValuesEnumerator: IIEnumerator;
  SortedListValuesEnumerator: IIEnumerator;
  HashTableKeysEnumerator: IIEnumerator;
  AEnumerator: IIEnumerator;
  Stack: IStack;
  Queue: IQueue;
  BitArray: IBitArray;
  HashTable: IHashtable;
  SortedList: ISortedList;
  I, P: Integer;

begin
  try
    //========================================================================
    //                        Using IArrayList Interface
    //========================================================================
    //The ArrayList interface is a dynamic array of heterogeneous objects. Note that in an array
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
      TConsole.NClass.WriteLine(ArrayList[I]);

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
      TConsole.NClass.WriteLine(ArrayList[I]);


    //========================================================================
    //                  Using StringCollection Interface
    //========================================================================
    //The StringCollection interface implements the IList interface and is like an ArrayList of strings.
    //The following code example shows how we can work with a StringCollection class.

    StringList := TStringCollection.Create;
    StringList.Add('Manashi');
    StringList.Add('Joydip');
    StringList.Add('Jini');
    StringList.Add('Piku');

    for I := 0 to StringList.Count - 1 do
      TConsole.NClass.WriteLine(StringList[I]);


    //========================================================================
    //                 Using StringDictionary Interface
    //========================================================================
    //Similar to the StringCollection interface we have the StringDictionary interface,
    //which is just a Hashtable that has its keys as strings only. Remember that a Hashtable
    //can contain any object type in its key. The following code shows how we can work with a
    //StringDictionary interface.

    StringDictionary := TStringDictionary.Create;
    StringDictionary.Add('A', 'Manashi');
    StringDictionary.Add('B','Joydip');
    StringDictionary.Add('C','Jini');
    StringDictionary.Add('D','Piku');

    StringDictValuesEnumerator := TIEnumerable.Wrap(StringDictionary.Values).GetEnumerator;
    while StringDictValuesEnumerator.MoveNext do
      TConsole.NClass.WriteLine(StringDictValuesEnumerator.Current);


    //========================================================================
    //                        Using Stack Interface
    //========================================================================
    //The Stack interface is one that provides a Last-in-First-out (LIFO) collection of items
    //of the System.Object type. The last added item is always at the top of the Stack and is also
    //the first one to be removed. The following code sample shows how we can use a Stack class for
    //LIFO operation on its collection of items.

    Stack := TStack.Create;
    Stack.Push('Joydip');
    Stack.Push('Steve');
    Stack.Push('Jini');
    while (Stack.Count > 0) do
      TConsole.NClass.WriteLine(Stack.Pop);

    //The Push method is responsible for storing items in the Stack and the method Pop
    //removes them one at a time from the top of the Stack.


    //========================================================================
    //                   Using Queue Interface
    //========================================================================
    //Unlike the Stack interface, the Queue is a data structure that provides a First-in-First-out
    //collection of items of the Object type. The newly added items are stored at the end or
    //the rear of the Queue and items are deleted from the front of the Queue.
    //The following code shows how the Queue class can be used.

    Queue := TQueue.Create;
    Queue.Enqueue('Joydip');
    Queue.Enqueue('Steve');
    Queue.Enqueue('Jini');
    while (Queue.Count > 0) do
      TConsole.NClass.WriteLine(Queue.Dequeue);

    //The Enqueue method is responsible for storing items at the rear of the Queue and the method Dequeue
    //removes them one at a time from the front of the Queue.


    //========================================================================
    //                     Using BitArray Interface
    //========================================================================
    //The BitArray interface can be used to store bits in an array. They can be set to true or false,
    //depending on the parameter supplied at the time of creating the BitArray object.
    //The following is an example of its usage.

    BitArray := TBitArray.Create(5, false);
    // Or
    BitArray := TBitArray.Create(5, true);
    // Similar to the other collections discussed above, the BitArray interface also contains the
    //Count property to get the number of items stored in this collection of bit values.
    //The following methods of the BitArray class allow logical bit operation.
    // �         And
    // �         Or
    // �         Not
    // �         Xor



    //========================================================================
    //                     Using Hashtable Interface
    //========================================================================
    //The Hashtable provides a faster way of storage and retrieval of items of the object type.
    //The Hashtable class provides support for key based searching. These keys are unique hash codes that
    //are unique to a specific type.  The GetHashCode method of the Hashtable class returns the hash code
    //for an object instance. The following code snippet shows how we can use a Hashtable interface.

    HashTable := THashtable.Create;
    HashTable.Add(1, 'Joydip');
    HashTable.Add(2, 'Manashi');
    HashTable.Add(3, 'Jini');
    HashTable.Add(4, 'Piku');
    TConsole.NClass.WriteLine('The keys are:--');
    HashTableKeysEnumerator := TIEnumerable.Wrap(HashTable.Keys).GetEnumerator;
    while HashTableKeysEnumerator.MoveNext do
      TConsole.NClass.WriteLine(HashTableKeysEnumerator.Current);

    try
      TConsole.NClass.WriteLine('Please enter the key to search');
      p := TInt32.NClass.Parse(TConsole.NClass.ReadLine);
      TConsole.NClass.WriteLine(HashTable[p]);
    except
      on E: Exception do
        TConsole.NClass.WriteLine(E.Message);
    end;

    //To remove an item from the Hashtable interface, the Remove method is used.
    //The statement HashTable.Remove(3) would remove the item "Jini" from the Hashtable
    //object created in the above code.  The code shown above can also be written as shown below
    //to display the contents of the Hashtable object using IDictionaryEnumerator.

    HashTable := THashtable.Create;
    HashTable.Add(1, 'Joydip');
    HashTable.Add(2, 'Manashi');
    HashTable.Add(3, 'Jini');
    HashTable.Add(4, 'Piku');
    TConsole.NClass.WriteLine('The keysare:--');
    AEnumerator := TIEnumerable.Wrap(HashTable.Keys).GetEnumerator;
    while AEnumerator.MoveNext do
      TConsole.NClass.WriteLine(HashTable[p]);


    //========================================================================
    //                     Using SortedList Interface
    //========================================================================
    //The SortedList interface allows items of the Object type to be placed in the
    //collection using key value pairs and, at the same time, supports sorting.
    //The following code shows how we can use a SortedList.

    SortedList := TSortedList.Create;
    SortedList.Add(1, 'Manashi');
    SortedList.Add(3, 'Joydip');
    SortedList.Add(2, 'Jini');
    SortedList.Add(4, 'Piku');

    TConsole.NClass.WriteLine('Displaying thenames');

    SortedListValuesEnumerator:= TIEnumerable.Wrap(SortedList.Values).GetEnumerator;
    while SortedListValuesEnumerator.MoveNext do
      TConsole.NClass.WriteLine(SortedListValuesEnumerator.Current);

    //The output of the above code is:
    //  Manashi
    //  Jini
    //  Joydip
    //  Piku

    //The same code can be written using IDictionaryEnumerator to display all the items of the
    //SortedList object, as shown below.

    SortedList := TSortedList.Create;
    SortedList.Add(1, 'Manashi');
    SortedList.Add(3, 'Joydip');
    SortedList.Add(2, 'Jini');
    SortedList.Add(4, 'Piku');
    TConsole.NClass.WriteLine('Displaying thenames');
    AEnumerator := TIEnumerable.Wrap(SortedList.Values).GetEnumerator;
    while AEnumerator.MoveNext do
      TConsole.NClass.WriteLine(AEnumerator.Current);

    TConsole.NClass.ReadKey;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

