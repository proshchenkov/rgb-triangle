unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Windows;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormClick(Sender: TObject);
var
  x, y, i, j, k, r1, r2, g1, g2, b1, b2: longint;
begin
  r1 := 25;
  r2 := 25;
  g1 := 125;
  g2 := 225;
  b1 := 250;
  b2 := 25;
  for i := 0 to 255 do
  begin
    for j := 0 to 255 - i do
    begin
      k := 255 - i - j;
      x := (r1 * i + g1 * j + b1 * k) div 255;
      y := (r2 * i + g2 * j + b2 * k) div 255;
      Form1.Canvas.Pixels[x, y] := RGB(i, j, k);
    end;
  end;
end;

end.
