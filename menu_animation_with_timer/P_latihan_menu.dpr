program P_latihan_menu;

uses
  System.StartUpCopy,
  FMX.Forms,
  form_login in 'form_login.pas' {Form1},
  form_menu in 'form_menu.pas' {Form2},
  form_profil in 'form_profil.pas' {Form3},
  form_dashborad in 'form_dashborad.pas' {Form4},
  form_database in 'form_database.pas' {Form5},
  form_system in 'form_system.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
