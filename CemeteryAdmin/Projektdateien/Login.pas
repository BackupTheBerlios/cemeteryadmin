unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, DBTables, DatenNekropole1,
  Main, ComCtrls;

type
  TfrmLogin = class(TForm)
    btnLogin: TButton;
    Label3: TLabel;
    editBenutzername: TLabeledEdit;
    editPasswort: TLabeledEdit;
    btnCancel: TButton;
    Panel1: TPanel;
    redMemo: TRichEdit;
    procedure btnLoginClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
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
var button: Integer; Loginname: String;

begin
  with datmNekropole1.ADOQuery_userlogin do begin
    Close;
    SQL.Text := 'select nvaShortName, nvaPassword from tab_user where nvaShortName = :ShortName';
    Parameters.ParamValues['ShortName'] := editBenutzername.text;
    Open
  end;
  if datmNekropole1.ADOQuery_userlogin.FieldValues['nvaShortName'] = self.editBenutzername.Text Then begin
    Loginname := datmNekropole1.ADOQuery_userlogin.FieldValues['nvaShortName'];
    if datmNekropole1.ADOQuery_userlogin.FieldValues['nvaPassword'] = self.editPasswort.Text Then begin
      if frmLogin <> nil then begin
        frmLogin.Release;
        frmLogin := nil
      end;
    MainForm.StatusBarMain.Panels[2].Text := 'eingeloggt als: ' + Loginname;
    end
    else begin
      with frmLogin do begin
        button := Application.MessageBox(PChar('Benutzername oder Passwort fehlerhaft!'), 'Meldung', 17);
        editBenutzername.Text := '';
        editPasswort.Text := '';
        editBenutzername.SetFocus
      end;
    end;
  end
  else begin
    button := Application.MessageBox(PChar('Benutzername oder Passwort fehlerhaft!'), 'Meldung', 17);
    if button = 1 then begin
      if frmLogin <> nil then begin
        frmLogin.Release;
        frmLogin := nil
      end;
    end
    else begin
      with frmLogin do begin
        editBenutzername.Text := '';
        editPasswort.Text := '';
        editBenutzername.SetFocus
      end;
    end;
  end;
  datmNekropole1.ADOQuery_userlogin.Close
  { TODO 1 -oSebesta -cLogin : Prozedur für das öffnen des Systems analog den Benutzerrechten }
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
  if frmLogin <> nil then begin
    frmLogin.Release;
    frmLogin := nil
  end;
end;

end.
