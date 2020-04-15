unit form_login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit,form_menu;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    //procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Enabled := false;
  //form1.Image1.Bitmap.Assign(form1.image1.MultiResBitmap.Items[0].bitmap);
  //form1.image1.Enabled := false;
  //form1.edit1.Visible := true;
  //form1.Edit1.Text := '';
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  Form2.show;
  Form1.hide;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Image1.Visible := true;
  Edit1.Visible := true;
  Edit1.Text := '';
  Image2.Visible := false;
  form2.Timer2.Enabled := false;
  form2.Timer4.Enabled := false;
  form2.Timer6.Enabled := false;
  form2.Timer8.Enabled := false;
  form2.Timer9.Enabled := false;
  //form1.Image1.Bitmap.Assign(form1.image1.MultiResBitmap.Items[0].bitmap);
  //form1.image1.Enabled := false;
  //form1.edit1.Visible := true;
  //form1.Edit1.Text := '';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    if Edit1.Text = '1703002' then
    begin
      //Image1.Bitmap.Assign(image1.MultiResBitmap.Items[1].bitmap);
      //image1.Enabled := true;
      Image1.Visible := false;
      Image2.Visible := True;
      edit1.Visible := false;
    end
    else
    edit1.Text := 'Incorrect!';
  end;
end;


end.
