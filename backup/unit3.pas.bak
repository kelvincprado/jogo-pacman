unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;
  rodar:boolean = false;

implementation

{$R *.lfm}

{ TForm3 }



procedure TForm3.Image1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin

end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  if rodar = true then
  begin
      if label1.top>32 then
      begin
        label1.top:=label1.top-1
      end;

      if label1.Top+144<label2.top then
      begin
        label2.top:=label2.top-1;
      end;

      if label2.Top+80<label3.top then
      begin
        label3.top:=label3.top-1;
      end;

      if label3.Top+64<label4.top then
      begin
        label4.top:=label4.top-1;
      end;
      if label4.Top+72<label5.top then
      begin
        label5.top:=label5.top-1;
      end;
      if label5.Top+72<label6.top then
      begin
        label6.top:=label6.top-1;
      end;
      if label6.Top+70<label8.top then
      begin
        label8.top:=label8.top-1;
      end;
      if label8.Top+88<label7.top then
      begin
        label7.top:=label7.top-1;
      end;
      if label1.top = 32 then
      begin
        Image1.Visible:=True;
      end;
  end;


end;

end.

