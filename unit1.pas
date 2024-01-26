unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls,Unit2,Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image3: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image4: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image5: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    fant: TImage;
    pac: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    win: TLabel;
    Sair: TLabel;
    score_label: TLabel;
    Panel1: TPanel;
    mov_Pac: TTimer;
    mov_fants: TTimer;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    score: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    score_actualize: TTimer;
    game_over_message: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure mov_fantsTimer(Sender: TObject);
    procedure mov_PacTimer(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure score_actualizeTimer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  tecla: string = '';
  mov:string = '';
  rodar_ : boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin
     if key = 'w' then
     begin
       tecla:='w';
     end;
     if key = 'a' then
     begin
       tecla:='a';
     end;
     if key = 's' then
     begin
       tecla:='s';
     end;
     if key = 'd' then
     begin
       tecla:='d';
     end;
end;

procedure TForm1.mov_fantsTimer(Sender: TObject);
var
  pontos:integer;
begin
  if tecla<>'' then
  begin
      //movimento dos fantasmas
      if pac.top>fant.top then
      begin
        fant.top:= fant.top +1;
      end;
      if pac.top<fant.top then
      begin
        fant.top:= fant.top -1;
      end;
      if pac.left>fant.left then
      begin
        fant.left:= fant.left +1;
      end;
      if pac.left<fant.left then
      begin
        fant.left:= fant.left -1;
      end;

      //Colisão lateral
       if (fant.left = panel4.left)  then
      begin
        fant.left:= fant.left+1;
      end;

      if (fant.left = panel5.left)  then
      begin
        fant.left:= fant.left-1;
      end;

      if (fant.top = panel2.top)  then
      begin
        fant.top:= fant.top+1;
      end;

      if (fant.top = panel3.top)  then
      begin
        fant.top:= fant.top-1;
      end;

      if (fant.left=panel7.left) or
      (fant.left=panel7.left-1) or
      (fant.left=panel6.left) or
      (fant.left=panel6.left+1)then
      begin
        if fant.top=panel7.top-1 then
        begin
          fant.top:=fant.top+1;
        end;
        if fant.top=panel9.top+1 then
        begin
          fant.top:=fant.top-1;
        end;
      end;

      if (fant.top=panel7.top) or (fant.top=panel9.top) then
      begin
        if fant.left=panel7.left-1 then
        begin
          fant.left:=fant.left+1;
        end;
        if fant.left=panel8.left+1 then
        begin
          fant.left:=fant.left-1;
        end;
      end;

      if (fant.left=panel10.left) or
      (fant.left=panel10.left-1) or
      (fant.left=panel11.left) or
      (fant.left=panel11.left+1)then
      begin
        if fant.top=panel10.top-1 then
        begin
          fant.top:=fant.top+1;
        end;
        if fant.top=panel12.top+1 then
        begin
          fant.top:=fant.top-1;
        end;
      end;

      if (fant.top=panel11.top) or (fant.top=panel12.top) then
      begin
        if fant.left=panel11.left+1 then
        begin
          fant.left:=fant.left-1;
        end;
        if fant.left=panel10.left-1 then
        begin
          fant.left:=fant.left+1;
        end;
      end;

      //Fazendo os caminhos possiveis para o fantasma
      //Caminhos centrais
        if (fant.left<>panel2.left) and
        (fant.left<>panel4.left+1) and
        (fant.left<>panel5.left-1) and
        (fant.left<>panel10.left) and
        (fant.left<>panel11.left) and
        (fant.left<>panel7.left) and
        (fant.left<>panel6.left) then
        begin
          if fant.top=panel4.top+1 then
          begin
            fant.top:= fant.top - 1;
          end;
          if fant.top=panel4.top-1 then
          begin
            fant.top:=fant.top + 1;
          end;
        end;

        if (fant.top<>panel2.top+1) and
        (fant.top<>panel7.top) and
        (fant.top<>panel5.top) and
        (fant.top<>panel10.top) and
        (fant.top<>panel12.top) and
        (fant.top<>panel9.top) and
        (fant.top<>panel3.top-1) then
        begin
          if fant.left=panel2.left+1 then
          begin
            fant.left:= fant.left - 1;
          end;
          if fant.left=panel2.left-1 then
          begin
            fant.left:= fant.left + 1;
          end;
        end;
        //Verticais extremas
        if (fant.top<>panel3.top-1) and
        (fant.top<>panel4.top) and
        (fant.top<>panel2.top+1) then
        begin
          if fant.left=panel4.left then
          begin
            fant.left:= fant.left + 1;
          end;

          if fant.left=panel4.left+2 then
          begin
            fant.left:= fant.left - 1;
          end;
          if fant.left=panel5.left then
          begin
            fant.left:= fant.left - 1;
          end;

          if fant.left=panel5.left-2 then
          begin
            fant.left:= fant.left + 1;
          end;
        end;
        //Topo e baixo
        if (fant.left<>panel2.left) and
        (fant.left<>panel4.left+1) and
        (fant.left<>panel5.left-1) then
        begin
          if fant.top=panel2.top+2 then
          begin
            fant.top:= fant.top - 1;
          end;

          if fant.top=panel2.top then
          begin
            fant.top:= fant.top + 1;
          end;
          if fant.top=panel3.top-2 then
          begin
            fant.top:= fant.top + 1;
          end;

          if fant.top=panel2.top then
          begin
            fant.top:= fant.top - 1;
          end;
        end;
        //Ao redor do centro interna
        //Horizontal
        if(fant.left>panel10.left) and
        (fant.left<panel11.left) and
        (fant.left<>panel2.left) then
        begin
          if fant.top=panel10.top-1 then
          begin
            fant.top:=fant.top+1;
          end;

          if fant.top=panel10.top+1 then
          begin
            fant.top:=fant.top-1;
          end;

          if fant.top=panel12.top-1 then
          begin
            fant.top:=fant.top+1;
          end;

          if fant.top=panel12.top+1 then
          begin
            fant.top:=fant.top-1;
          end;
        end;

        if(fant.top>panel10.top) and
        (fant.top<panel12.top) and
        (fant.top<>panel4.top) then
        begin
          if fant.left=panel10.left-1 then
          begin
            fant.left:=fant.left+1;
          end;

          if fant.left=panel10.left+1 then
          begin
            fant.left:=fant.left-1;
          end;

          if fant.left=panel11.left-1 then
          begin
            fant.left:=fant.left+1;
          end;

          if fant.left=panel11.left+1 then
          begin
            fant.left:=fant.left-1;
          end;
        end;

        //Ao redor do centro externa
        //Horizontal
        if(fant.left>panel7.left) and
        (fant.left<panel6.left) and
        (fant.left<>panel2.left) then
        begin
          if fant.top=panel7.top-1 then
          begin
            fant.top:=fant.top+1;
          end;

          if fant.top=panel7.top+1 then
          begin
            fant.top:=fant.top-1;
          end;

          if fant.top=panel9.top-1 then
          begin
            fant.top:=fant.top+1;
          end;

          if fant.top=panel9.top+1 then
          begin
            fant.top:=fant.top-1;
          end;
        end;

        if(fant.top>panel7.top) and
        (fant.top<panel9.top) and
        (fant.top<>panel4.top) then
        begin
          if fant.left=panel7.left-1 then
          begin
            fant.left:=fant.left+1;
          end;

          if fant.left=panel7.left+1 then
          begin
            fant.left:=fant.left-1;
          end;

          if fant.left=panel6.left-1 then
          begin
            fant.left:=fant.left+1;
          end;

          if fant.left=panel6.left+1 then
          begin
            fant.left:=fant.left-1;
          end;
        end;
        pontos:=StrToInt(score_label.caption);
        if pontos = 280 then
        begin
              win.Visible:=True;
        end
        else if (fant.top+32=pac.top) and (fant.left=pac.left) or
        (pac.top = fant.top) and (fant.left=pac.left+32) or
        (pac.top+32=fant.top) and (fant.left=pac.left)or
        (pac.left=fant.left+32) and (pac.top=fant.top) then
        begin
            pac.Visible:=False;
              if mov<>'' then
              begin
                    mov:='';
              end;
            pac.top:=0;
            game_over_message.visible:= True;
        end;
  end;
end;

procedure TForm1.mov_PacTimer(Sender: TObject);
begin
   //topo e baixo
   if (pac.left<>panel2.left) and
   (pac.left>panel4.left+1) and
   (pac.Left<panel5.left)then
   begin
     if (pac.top=panel2.top+1) then
     begin
        if (tecla = 'a') or (tecla = 'd') then
        begin
             mov:=tecla;
        end;
     end;
     if (pac.top=panel3.top-1) then
     begin
       if (tecla = 'a') or (tecla = 'd') then
        begin
             mov:=tecla;
        end;
     end;
    end;

    //Topo e baixo externo
    if (pac.left<>panel2.left) and
   (pac.left>panel7.left) and
   (pac.Left<panel6.left)then
   begin
     if (pac.top=panel7.top) then
     begin
        if (tecla = 'a') or (tecla = 'd') then
        begin
             mov:=tecla;
        end
     end;
     if (pac.top=panel8.top) then
     begin
       if (tecla = 'a') or (tecla = 'd') then
        begin
             mov:=tecla;
        end
     end;
    end;
    //Topo e baixo interno
    if (pac.left<>panel2.left) and
   (pac.left>panel10.left) and
   (pac.Left<panel11.left)then
   begin
     if (pac.top=panel11.top) then
     begin
        if (tecla = 'a') or (tecla = 'd') then
        begin
             mov:=tecla;
        end
     end;
     if (pac.top=panel13.top) then
     begin
       if (tecla = 'a') or (tecla = 'd') then
        begin
             mov:=tecla;
        end
     end;
    end;

    //Agora é onde o filho chora e a mae nao ve
    //esquerda e direita
    if (pac.top > panel2.top+1) and
    (pac.top <> panel4.top) and
    (pac.top < panel3.top-1) then
    begin
       if (pac.left=panel4.left+1) then
       begin
            if (tecla = 'w') or (tecla = 's') then
            begin
                 mov:=tecla;
            end;
       end;
       if (pac.left=panel5.left-1) then
       begin
            if (tecla = 'w') or (tecla = 's') then
            begin
                 mov:=tecla;
            end;
       end;
    end;

    //esquerda e direita externa

    if (pac.top > panel7.top) and
    (pac.top <> panel4.top) and
    (pac.top < panel9.top) then
    begin
       if (pac.left=panel7.left) then
       begin
            if (tecla = 'w') or (tecla = 's') then
            begin
                 mov:=tecla;
            end;
       end;
       if (pac.left=panel6.left) then
       begin
            if (tecla = 'w') or (tecla = 's') then
            begin
                 mov:=tecla;
            end;
       end;
    end;

    //esquerda e direita interna
    if (pac.top > panel10.top) and
    (pac.top <> panel4.top) and
    (pac.top < panel12.top) then
    begin
       if (pac.left=panel10.left) then
       begin
            if (tecla = 'w') or (tecla = 's') then
            begin
                 mov:=tecla;
            end;
       end;
       if (pac.left=panel11.left) then
       begin
            if (tecla = 'w') or (tecla = 's') then
            begin
                 mov:=tecla;
            end;
       end;
    end;

    //centros
    //vertical
    if (pac.Left > panel4.left+1) and
    (pac.left <> panel7.left) and
    (pac.left <> panel10.left) and
    (pac.left <> panel2.left) and
    (pac.left <> panel11.left) and
    (pac.left <> panel6.left) and
    (pac.left < panel5.left-1)then
    begin
       if (pac.top=panel5.top) then
       begin
          if (tecla = 'a') or (tecla = 'd') then
          begin
               mov:=tecla;
          end
       end;
    end;
    //Horizontal
    if (pac.top > panel2.top+1) and
    (pac.top <> panel7.top) and
    (pac.top <> panel10.top) and
    (pac.top <> panel2.top) and
    (pac.top <> panel8.top) and
    (pac.top <> panel4.top) and
    (pac.top < panel3.top-1)then
    begin
       if (pac.left=panel3.left) then
       begin
          if (tecla = 'w') or (tecla = 's') then
          begin
               mov:=tecla;
          end
       end;
    end;

    ////////////////////////////////
    //cruzamentos
    ////Caminho extremo externo
    if (pac.left=panel4.left+1) and
    (pac.top=panel2.top+1) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel2.left) and
    (pac.top=panel2.top+1) then
    begin
       if tecla<>'w' then
       mov:=tecla;
    end;

    if (pac.left=panel5.left-1) and
    (pac.top=panel2.top+1) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel4.left+1) and
    (pac.top=panel4.top) then
    begin
       if tecla<>'a' then
       mov:=tecla;
    end;

    if (pac.left=panel5.left-1) and
    (pac.top=panel5.top) then
    begin
       if tecla<>'d' then
       mov:=tecla;
    end;

    if (pac.left=panel5.left-1) and
    (pac.top=panel3.top-1) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel3.left) and
    (pac.top=panel3.top-1) then
    begin
       if tecla<>'s' then
       mov:=tecla;
    end;

    if (pac.left=panel4.left+1) and
    (pac.top=panel3.top-1) then
    begin
       mov:=tecla;
    end;

    //////////////////////////
    ////Caminho externo///////

    if (pac.left=panel7.left) and
    (pac.top=panel7.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel2.left) and
    (pac.top=panel6.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel6.left) and
    (pac.top=panel6.top) then
    begin
       mov:=tecla;
    end;
    if (pac.left=panel6.left) and
    (pac.top=panel5.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel8.left) and
    (pac.top=panel8.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel3.left) and
    (pac.top=panel8.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel9.left) and
    (pac.top=panel9.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel7.left) and
    (pac.top=panel4.top) then
    begin
       mov:=tecla;
    end;

    ///////
    /////Caminho Interno

    if (pac.left=panel10.left) and
    (pac.top=panel10.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel2.left) and
    (pac.top=panel10.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel11.left) and
    (pac.top=panel11.top) then
    begin
       mov:=tecla;
    end;
    if (pac.left=panel11.left) and
    (pac.top=panel5.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel13.left) and
    (pac.top=panel13.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel3.left) and
    (pac.top=panel13.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel12.left) and
    (pac.top=panel12.top) then
    begin
       mov:=tecla;
    end;

    if (pac.left=panel12.left) and
    (pac.top=panel4.top) then
    begin
       mov:=tecla;
    end;
    /////Centro
    if (pac.left=panel2.left) and
    (pac.top=panel5.top) then
    begin
       mov:=tecla;
    end;
    ///////////////////////////

    //movimentos pacman
  if mov = 'a' then
  begin
    pac.left:= pac.left -1;
  end;
  if mov = 'd' then
  begin
    pac.left:= pac.left +1;
  end;
  if mov = 'w' then
  begin
    pac.top:= pac.top -1;
  end;
  if mov = 's' then
  begin
    pac.top:= pac.top +1;
  end;
  //Colisão lateral
   if (pac.left = panel4.left)  then
  begin
    pac.left:= pac.left+1;
  end;

  if (pac.left = panel5.left)  then
  begin
    pac.left:= pac.left-1;
  end;

  if (pac.top = panel3.top)  then
  begin
    pac.top:= pac.top-1;
  end;

  if
  (pac.top=panel2.top)then
  begin
    pac.top:= pac.top+1;
  end;

  if (pac.left=panel7.left) then
  begin
    if pac.top=panel7.top-1 then
    begin
      pac.top:=pac.top+1;
    end;
    if pac.top=panel9.top+1 then
    begin
      pac.top:=pac.top-1;
    end;
  end;

  if (pac.left=panel6.left) then
  begin
    if pac.top=panel6.top-1 then
    begin
      pac.top:=pac.top+1;
    end;
    if pac.top=panel8.top+1 then
    begin
      pac.top:=pac.top-1;
    end;
  end;

  if (pac.top=panel7.top) or (pac.top=panel9.top) then
  begin
    if pac.left=panel7.left-1 then
    begin
      pac.left:=pac.left+1;
    end;
    if pac.left=panel8.left+1 then
    begin
      pac.left:=pac.left-1;
    end;
  end;

  if (pac.left=panel10.left) or (pac.left=panel11.left) then
  begin
    if pac.top=panel10.top-1 then
    begin
      pac.top:=pac.top+1;
    end;
    if pac.top=panel12.top+1 then
    begin
      pac.top:=pac.top-1;
    end;
  end;

  if (pac.top=panel11.top) or (pac.top=panel12.top) then
  begin
    if pac.left=panel11.left+1 then
    begin
      pac.left:=pac.left-1;
    end;
    if pac.left=panel10.left-1 then
    begin
      pac.left:=pac.left+1;
    end;
  end;

  //Fazendo os caminhos possiveis para o pac man
  //Caminhos centrais
    if (pac.left<>panel2.left) and
    (pac.left<>panel4.left+1) and
    (pac.left<>panel5.left-1) and
    (pac.left<>panel10.left) and
    (pac.left<>panel11.left) and
    (pac.left<>panel7.left) and
    (pac.left<>panel6.left) then
    begin
      if pac.top=panel4.top+1 then
      begin
        pac.top:= pac.top - 1;
      end;
      if pac.top=panel4.top-1 then
      begin
        pac.top:= pac.top + 1;
      end;
    end;

    if (pac.top<>panel2.top+1) and
    (pac.top<>panel7.top) and
    (pac.top<>panel5.top) and
    (pac.top<>panel10.top) and
    (pac.top<>panel12.top) and
    (pac.top<>panel9.top) and
    (pac.top<>panel3.top-1) then
    begin
      if pac.left=panel2.left+1 then
      begin
        pac.left:= pac.left - 1;
      end;
      if pac.left=panel2.left-1 then
      begin
        pac.left:= pac.left + 1;
      end;
    end;
    //Verticais extremas
    if (pac.top<>panel3.top-1) and
    (pac.top<>panel4.top) and
    (pac.top<>panel2.top+1) then
    begin
      if pac.left=panel4.left then
      begin
        pac.left:= pac.left + 1;
      end;

      if pac.left=panel4.left+2 then
      begin
        pac.left:= pac.left - 1;
      end;
      if pac.left=panel5.left then
      begin
        pac.left:= pac.left - 1;
      end;

      if pac.left=panel5.left-2 then
      begin
        pac.left:= pac.left + 1;
      end;
    end;
    //Topo e baixo
    if (pac.left<>panel2.left) and
    (pac.left<>panel4.left+1) and
    (pac.left<>panel5.left-1) then
    begin
      if pac.top=panel2.top+2 then
      begin
        pac.top:= pac.top - 1;
      end;

      if pac.top=panel2.top then
      begin
        pac.top:= pac.top + 1;
      end;
      if pac.top=panel3.top-2 then
      begin
        pac.top:= pac.top + 1;
      end;
      if pac.top=panel2.top then
      begin
        pac.top:= pac.top - 1;
      end;
   end;
    //Ao redor do centro interna
    //Horizontal
    if(pac.left>panel10.left) and
    (pac.left<panel11.left) and
    (pac.left<>panel2.left) then
    begin
      if pac.top=panel10.top-1 then
      begin
        pac.top:=pac.top+1;
      end;

      if pac.top=panel10.top+1 then
      begin
        pac.top:=pac.top-1;
      end;

      if pac.top=panel12.top-1 then
      begin
        pac.top:=pac.top+1;
      end;

      if pac.top=panel12.top+1 then
      begin
        pac.top:=pac.top-1;
      end;
    end;

    if(pac.top>panel10.top) and
    (pac.top<panel12.top) and
    (pac.top<>panel4.top) then
    begin
      if pac.left=panel10.left-1 then
      begin
        pac.left:=pac.left+1;
      end;

      if pac.left=panel10.left+1 then
      begin
        pac.left:=pac.left-1;
      end;

      if pac.left=panel11.left-1 then
      begin
        pac.left:=pac.left+1;
      end;

      if pac.left=panel11.left+1 then
      begin
        pac.left:=pac.left-1;
      end;
    end;

    //Ao redor do centro externa
    if(pac.left>panel7.left) and
    (pac.left<panel6.left) and
    (pac.left<>panel2.left) then
    begin
      if pac.top=panel7.top-1 then
      begin
        pac.top:=pac.top+1;
      end;

      if pac.top=panel7.top+1 then
      begin
        pac.top:=pac.top-1;
      end;

      if pac.top=panel9.top-1 then
      begin
        pac.top:=pac.top+1;
      end;

      if pac.top=panel9.top+1 then
      begin
        pac.top:=pac.top-1;
      end;
    end;

    if(pac.top>panel7.top) and
    (pac.top<panel9.top) and
    (pac.top<>panel4.top) then
    begin
      if pac.left=panel7.left-1 then
      begin
        pac.left:=pac.left+1;
      end;

      if pac.left=panel7.left+1 then
      begin
        pac.left:=pac.left-1;
      end;

      if pac.left=panel6.left-1 then
      begin
        pac.left:=pac.left+1;
      end;

      if pac.left=panel6.left+1 then
      begin
        pac.left:=pac.left-1;
      end;
    end;
end;

procedure TForm1.SairClick(Sender: TObject);
begin
    rodar:=true;
  form3.showmodal();
  Form2.close;
  form1.close;
end;

procedure TForm1.score_actualizeTimer(Sender: TObject);
var
  pont:integer;
begin
  pont:=StrToInt(score_label.caption);
  if (pac.top = image25.Top) and (pac.left = image25.left) then
  begin
    if image25.visible = true then
    begin
      Image25.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image26.Top) and (pac.left = image26.left) then
  begin
    if image26.Visible  = True then
    begin
      Image26.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image27.Top) and (pac.left = image27.left) then
  begin
    if image27.Visible  = True then
    begin
      Image27.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image28.Top) and (pac.left = image28.left) then
  begin
    if image28.Visible  = True then
    begin
      Image28.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image29.Top) and (pac.left = image29.left) then
  begin
    if image29.Visible  = True then
    begin
      Image29.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image30.Top) and (pac.left = image30.left) then
  begin
    if image30.Visible  = True then
    begin
      Image30.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image31.Top) and (pac.left = image31.left) then
  begin
    if image31.Visible  = True then
    begin
      Image31.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image32.Top) and (pac.left = image32.left) then
  begin
    if image32.Visible  = True then
    begin
      Image32.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image33.Top) and (pac.left = image33.left) then
  begin
    if image33.Visible  = True then
    begin
      Image33.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image34.Top) and (pac.left = image34.left) then
  begin
    if image34.Visible  = True then
    begin
      Image34.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image35.Top) and (pac.left = image35.left) then
  begin
    if image35.Visible  = True then
    begin
      Image35.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image36.Top) and (pac.left = image36.left) then
  begin
    if image36.Visible  = True then
    begin
      Image36.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image37.Top) and (pac.left = image37.left) then
  begin
    if image37.Visible  = True then
    begin
      Image37.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image38.Top) and (pac.left = image38.left) then
  begin
    if image38.Visible  = True then
    begin
      Image38.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image39.Top) and (pac.left = image39.left) then
  begin
    if image39.Visible  = True then
    begin
      Image39.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image40.Top) and (pac.left = image40.left) then
  begin
    if image40.Visible  = True then
    begin
      Image40.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image41.Top) and (pac.left = image41.left) then
  begin
    if image41.Visible  = True then
    begin
      Image41.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image42.Top) and (pac.left = image42.left) then
  begin
    if image42.Visible  = True then
    begin
      Image42.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image43.Top) and (pac.left = image43.left) then
  begin
    if image43.Visible  = True then
    begin
      Image43.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image44.Top) and (pac.left = image44.left) then
  begin
    if image44.Visible  = True then
    begin
      Image44.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image45.Top) and (pac.left = image45.left) then
  begin
    if image45.Visible  = True then
    begin
      Image45.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image46.Top) and (pac.left = image46.left) then
  begin
    if image46.Visible  = True then
    begin
      Image46.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image47.Top) and (pac.left = image47.left) then
  begin
    if image47.Visible  = True then
    begin
      Image47.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image48.Top) and (pac.left = image48.left) then
  begin
    if image48.Visible  = True then
    begin
      Image48.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image49.Top) and (pac.left = image49.left) then
  begin
    if image49.Visible  = True then
    begin
      Image49.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image50.Top) and (pac.left = image50.left) then
  begin
    if image50.Visible  = True then
    begin
      Image50.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image51.Top) and (pac.left = image51.left) then
  begin
    if image51.Visible  = True then
    begin
      Image51.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
  if (pac.top = image52.Top) and (pac.left = image52.left) then
  begin
    if image52.Visible  = True then
    begin
      Image52.Visible:=False;
      score_label.caption:=IntToStr(pont+10);
    end;
  end;
end;
end.

