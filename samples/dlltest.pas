<?pas

Program IFSTest;

{$I 'types.pas'}
// compile the demo application, minimize delphi and run this. 
function FindWindow(C1, C2: PChar): Longint; external 'FindWindowA@user32.dll stdcall';
function ShowWindow(hWnd, nCmdShow: Longint): Integer; external 'ShowWindow@user32.dll stdcall';
function SetWindowText(hWnd: Longint; Text: PChar): Longint; external 'SetWindowTextA@user32.dll stdcall';
var 
	i: Longint;
    wnd: Longint;
    rec: trec;
Begin
  wnd := Findwindow('', 'Innerfuse Pascal Script III');
  SetWindowText(Wnd, 'This is DLL demo, it calls some windows user32 routines. This will hide this window for a few seconds');
  for i := 0 to 200000 do begin end;
  ShowWindow(Wnd, 0); // hide it
  for i := 0 to 200000 do begin end;
  SetWindowText(Wnd, 'Wasn''t that nice?');
  ShowWindow(Wnd, 5); // show it
  for i := 0 to 200000 do begin end;
  SetWindowText(Wnd, 'Innerfuse Pascal Script III');
 rec.merhaba := 'deneme mesaj�'; 
  echo(rec.merhaba);
End.

?>