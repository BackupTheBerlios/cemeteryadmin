program nekropole;

uses
  Forms,
  MAIN in 'MAIN.PAS' {MainForm},
  CHILDWIN in 'CHILDWIN.PAS' {MDIChild},
  about in 'about.pas' {AboutBox},
  CopyrightOpening in 'CopyrightOpening.pas' {frmCopyrightOpening},
  Login in 'Login.pas' {frmLogin};

{$R *.RES}

begin
  frmCopyrightOpening := TfrmCopyrightOpening.Create(Application);
  frmCopyrightOpening.Show;
  frmCopyrightOpening.Update;
  Application.Initialize;
  Application.Title := 'Nekropole 2004';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
