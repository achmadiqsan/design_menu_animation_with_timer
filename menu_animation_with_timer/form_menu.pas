unit form_menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    Rectangle1: TRectangle;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    Timer9: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses form_login,form_profil,form_dashborad,form_database,form_system;

procedure TForm2.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  Timer1.Enabled := True;
  Timer3.Enabled := True;
  Timer5.Enabled := True;
  Timer7.Enabled := True;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  //position image
  Image2.Position.X := 450;
  Image1.Position.X := 450;
  Image3.Position.X := 450;
  Image4.Position.X := 450;
  //Image5.Position.X := 450;
  //interval time
  Timer1.Interval := 10;
  Timer2.Interval := 10;
  Timer3.Interval := 16;
  timer4.Interval := 16;
  timer5.Interval := 22;
  timer6.Interval := 22;
  timer7.Interval := 32;
  timer8.Interval := 32;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  with Image2.Position do
    begin
      if (X >= 24) then
        begin
          X := X - 10;
        end;
    end;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  with Image2.Position do
  begin
    if (X <= 450) then
    begin
      X := X + 10;
    end;
  end;
end;

procedure TForm2.Timer3Timer(Sender: TObject);
begin
  with Image1.Position do
    begin
      if (X >= 24) then
        begin
          X := X - 10;
        end;
    end;
end;

procedure TForm2.Timer4Timer(Sender: TObject);
begin
  with Image1.Position do
    begin
      if (X <= 450) then
      begin
        X := X + 10;
      end;
    end;
end;

procedure TForm2.Timer5Timer(Sender: TObject);
begin
  with Image3.Position do
    begin
      if (X >= 24) then
        begin
          X := X - 10;
        end;
    end;
end;

procedure TForm2.Timer6Timer(Sender: TObject);
begin
  with Image3.Position do
    begin
      if (X <= 450) then
      begin
        X := X + 10;
      end;
    end;
end;

procedure TForm2.Timer7Timer(Sender: TObject);
begin
  with Image4.Position do
    begin
      if (X >= 24) then
        begin
          X := X - 10;
        end;
    end;
end;

procedure TForm2.Timer8Timer(Sender: TObject);
begin
  with Image4.Position do
    begin
      if (X <= 450) then
      begin
        X := X + 10;
        //form2.Hide;
        //form1.ShowModal;
      end;
    end;
  //form2.Hide;
  //form1.ShowModal;
end;

procedure TForm2.Timer9Timer(Sender: TObject);
begin
  with Image4.Position do
  begin
    if X = 450 then
    begin
      form2.Hide;
      form1.ShowModal;
    end;
  end;
  //form1.Image1.Bitmap.Assign(form1.image1.MultiResBitmap.Items[1].bitmap);
  //form1.image1.Enabled := false;
  //form1.edit1.Visible := true;
  //form1.Edit1.Text := '';
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  form4.Show;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  form3.show;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
  form5.show;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
  form6.show;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer3.Enabled := false;
  Timer5.Enabled := false;
  Timer7.Enabled := false;
  //
  Timer2.Enabled :=  true;
  timer4.Enabled := true;
  timer6.Enabled := true;
  timer8.Enabled := true;

  //if Image4.Position.X = 450 then
  //begin
   // form2.Hide;
    //form1.ShowModal;
  //end;
  timer9.Enabled := true;
  //form1.Image1.Bitmap.Assign(form1.image1.MultiResBitmap.Items[1].bitmap);
  //form1.image1.Enabled := false;
  //form1.edit1.Visible := true;
  //form1.Edit1.Text := '';
end;

end.
