unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, DBTables, DatenNekropole1;

type
  TfrmLogin = class(TForm)
    btnLogin: TButton;
    Label3: TLabel;
    editBenutzername: TLabeledEdit;
    editPasswort: TLabeledEdit;
    Button1: TButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);

begin
  with datmNekropole1.ADOQuery_userlogin do begin
  Close;
  SQL.Text := 'select nvaShortName, nvaPassword from tab_user where nvaShortName = :ShortName';
  Parameters.ParamValues['ShortName'] := editBenutzername.text;
  Open
  end;
  if datmNekropole1.ADOQuery_userlogin.FieldValues['nvaShortName'] = self.editBenutzername.Text Then begin
    if datmNekropole1.ADOQuery_userlogin.FieldValues['nvaPassword'] = self.editPasswort.Text Then begin
        Application.MessageBox(PChar('Passwort OK!'), 'Meldung', 16)
    end;
  end
  else begin
      Application.MessageBox(PChar('Passwort fehlerhaft!'), 'Meldung', 16)
  end;
  frmLogin.Close;
  datmNekropole1.ADOQuery_userlogin.Close
end;

end.
