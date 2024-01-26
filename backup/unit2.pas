unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Unit3;

type

  { TForm2 }

  TForm2 = class(TForm)
    Image1: TImage;
    kmt: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;
  tab:integer = 0;

implementation
uses unit1;


{$R *.lfm}

{ TForm2 }

procedure TForm2.TimerTimer(Sender: TObject);
begin
  if kmt.left>-1400 then
  begin
       kmt.left:=kmt.left-2;
  end;
  if kmt.left <-400 then
  begin
       if label1.left > -1400 then
       begin
            label1.left:=label1.left-3;
       end;
  end;
  if label1.left<-400 then
  begin
       if label2.left > -1400 then
       begin
            label2.left:=label2.left-3;
       end;
  end;
  if label2.Left<-1000 then
  begin
       if Image1.Left>184 then
       begin
            Image1.Left:=Image1.Left-4;
       end;
  end;
  if Image1.Left = 184 then
  begin
       Label3.Visible:=True;
       Label4.Visible:=True;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  form1.showmodal();
  form2.close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  form3.showmodal();
  Form2.close;
  form1.close;
end;
procedure TForm2.Label3Click(Sender: TObject);
begin
  form1.showmodal();
  form2.close;
end;

procedure TForm2.Label4Click(Sender: TObject);
begin

    rodar:=true;
  form3.showmodal();
  Form2.close;
  form1.close;
end;

end.

