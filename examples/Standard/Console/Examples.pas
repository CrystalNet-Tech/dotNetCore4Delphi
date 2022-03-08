unit Examples;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses uConsole, CNCoreClrLib.ObjectMgr;

type
  TConsoleDemo = class
  private
    class procedure ConsoleCancelEventHandler(sender: TCoreClrObject; args: TConsoleCancelEventArgs);
  public
    class procedure Example1;
    class procedure Example2;
    class procedure Example3;
    class procedure Example4;
  end;

implementation

uses SysUtils;

{ TConsoleDemo }

// The following example demonstrates how to read data from, and write data to, the standard
// input and output streams. Note that these streams can be redirected by using the SetIn and
// SetOut methods.
class procedure TConsoleDemo.Example1;
var
  name: string;
begin
  TConsole.Title := 'Example1';

  TConsole.Write(' Hello ');
  TConsole.WriteLine(' World ! ');
  TConsole.Write(' Enter your name: ');
  name := TConsole.ReadLine();
  TConsole.Write(' Good day, ');
  TConsole.Write(name);
  TConsole.WriteLine(' ! ');

// The example displays output similar to the following:
//       Hello World!
//       Enter your name: James
//       Good day, James!
end;

//This example demonstrates the CursorLeft and CursorTop properties, and the SetCursorPosition and
//Clear methods. The example positions the cursor, which determines where the next write will occur,
//to draw a 5 character by 5 character rectangle using a combination of '+', '|', and '-' strings.
//Note that the rectangle could be drawn with fewer steps using a combination of other strings.
class procedure TConsoleDemo.Example2;
var
  origRow, origCol: Integer;

  procedure WriteAt(s: string; x, y: Integer);
  begin
    try
      TConsole.SetCursorPosition(origCol+x, origRow+y);
      TConsole.Write(s);
    except
      on E: Exception do
      begin
        //ArgumentOutOfRangeException
        TConsole.Clear();
        TConsole.WriteLine(e.Message);
      end;
    end;
  end;

begin
// This example demonstrates the
//     Console.CursorLeft and
//     Console.CursorTop properties, and the
//     Console.SetCursorPosition and
//     Console.Clear methods.

  TConsole.Title := 'Example2';

// Clear the screen, then save the top and left coordinates.
//  TConsole.Clear();
  origRow := TConsole.CursorTop;
  origCol := TConsole.CursorLeft;

// Draw the left side of a 5x5 rectangle, from top to bottom.
  WriteAt('+', 0, 0);
  WriteAt('|', 0, 1);
  WriteAt('|', 0, 2);
  WriteAt('|', 0, 3);
  WriteAt('+', 0, 4);

// Draw the bottom side, from left to right.
  WriteAt('-', 1, 4); // shortcut: WriteAt('---', 1, 4)
  WriteAt('-', 2, 4); // ...
  WriteAt('-', 3, 4); // ...
  WriteAt('+', 4, 4);

// Draw the right side, from bottom to top.
  WriteAt('|', 4, 3);
  WriteAt('|', 4, 2);
  WriteAt('|', 4, 1);
  WriteAt('+', 4, 0);

// Draw the top side, from right to left.
  WriteAt('-', 3, 0); // shortcut: WriteAt('---', 1, 0)
  WriteAt('-', 2, 0); // ...
  WriteAt('-', 1, 0); // ...
//
  WriteAt('All done!', 0, 6);
  TConsole.WriteLine();

(*
This example produces the following results:

+---+
|   |
|   |
|   |
+---+

All done!

*)
end;

//This example demonstrates the SetWindowSize method, and the WindowWidth and WindowHeight properties.
//You must run the example to see the full effect of changing the console window size.
//The example reports the dimensions of a console window set to 85 columns and 43 rows, then
//waits for a key press. When any key is pressed, the dimensions of the console window are halved,
//the new dimensions are reported, and the example waits for another key press. Finally, when any
//key is pressed the console window is restored to its original dimensions and the example terminates.
class procedure TConsoleDemo.Example3;
var
  origWidth, width, origHeight, height: Integer;
  m1, m2, m4: string;
begin
// This example demonstrates the Console.SetWindowSize method,
//                           the Console.WindowWidth property,
//                       and the Console.WindowHeight property.
  m1 := 'The current window width is {0}, and the ' +
        'current window height is {1}.';
  m2 := 'The new window width is {0}, and the new ' +
        'window height is {1}.';
  m4 := '  (Press any key to continue...)';
//
// Step 1: Get the current window dimensions.
//
  origWidth  := TConsole.WindowWidth;
  origHeight := TConsole.WindowHeight;
{$IFDEF FPC}
  TConsole.WriteLine(m1, TConsole.WindowWidth, TConsole.WindowHeight);
{$ELSE}
  TConsole.WriteLine(m1, [TConsole.WindowWidth, TConsole.WindowHeight]);
{$ENDIF}
  TConsole.WriteLine(m4);
  TConsole.ReadKey(true);
//
// Step 2: Cut the window to 1/4 its original size.
//
  width  := Trunc(origWidth/2);
  height := Trunc(origHeight/2);
  TConsole.SetWindowSize(width, height);
{$IFDEF FPC}
  TConsole.WriteLine(m2, TConsole.WindowWidth, TConsole.WindowHeight);
{$ELSE}
  TConsole.WriteLine(m2, [TConsole.WindowWidth, TConsole.WindowHeight]);
{$ENDIF}
  TConsole.WriteLine(m4);
  TConsole.ReadKey(true);
//
// Step 3: Restore the window to its original size.
//
  TConsole.SetWindowSize(origWidth, origHeight);
{$IFDEF FPC}
  TConsole.WriteLine(m1, TConsole.WindowWidth, TConsole.WindowHeight);
{$ELSE}
  TConsole.WriteLine(m1, [TConsole.WindowWidth, TConsole.WindowHeight]);
{$ENDIF}

(*
This example produces the following results:

The current window width is 85, and the current window height is 43.
  (Press any key to continue...)
The new window width is 42, and the new window height is 21.
  (Press any key to continue...)
The current window width is 85, and the current window height is 43.

*)
end;

//The following example demonstrates how the CancelKeyPress event is used.
//When you press Ctrl+C, the read operation is interrupted and the myHandler event
//handler is invoked. Upon entry to the event handler, the ConsoleCancelEventArgs.Cancel
//property is false, which means that the current process will terminate when the event
//handler terminates. However, the event handler sets the ConsoleCancelEventArgs.Cancel
//property to true, which means that the process will not terminate and the read operation
//will resume.
class procedure TConsoleDemo.Example4;
var
  cki: IConsoleKeyInfo;
begin
  TConsole.Clear();

  // Establish an event handler to process key press events.
  TConsole.CancelKeyPress := ConsoleCancelEventHandler;
  while (true) do
  begin
    TConsole.Write('Press any key, or ''X'' to quit, or ');
    TConsole.WriteLine('CTRL+C to interrupt the read operation:');

    // Start a console read operation. Do not display the input.
    cki := TConsole.ReadKey(true);

    // Announce the name of the key that was pressed .
  {$IFDEF FPC}
    TConsole.WriteLine('  Key pressed: {0}'#13#10, cki.Key);
  {$ELSE}
    TConsole.WriteLine('  Key pressed: {0}'#13#10, [cki.Key]);
  {$ENDIF}

    // Exit if the user pressed the 'X' key.
    if cki.Key = Ord(TConsoleKey.X) then
      break;
  end;
end;

class procedure TConsoleDemo.ConsoleCancelEventHandler(sender: TCoreClrObject;
  args: TConsoleCancelEventArgs);
begin
  TConsole.WriteLine(#13#10+'The read operation has been interrupted.');

  TConsole.WriteLine('  Key pressed: ', [args.SpecialKey]);

  TConsole.WriteLine('  Cancel property: ', [args.Cancel]);

  // Set the Cancel property to true to prevent the process from terminating.
  TConsole.WriteLine('Setting the Cancel property to true...');
  args.Cancel := true;

  // Announce the new value of the Cancel property.
  TConsole.WriteLine('  Cancel property: ', [args.Cancel]);
  TConsole.WriteLine('The read operation will resume...'+#13#10);
end;


end.
