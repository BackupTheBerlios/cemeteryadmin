unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, DBTables, DatenNekropole1,
  MAIN, ComCtrls;

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

  function checkLogin(var UserName: String): Boolean;
      
var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses SysInsp;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var button: Integer; Loginname: String; Login: Boolean;
var frmSysInsp: TfrmSysInspector;

begin
  Loginname := '';
  Login := checkLogin(Loginname);
  if Login = True Then begin
    if frmLogin <> nil then begin
        frmLogin.Release;
        frmLogin := nil
    end;
    MainForm.StatusBarMain.Panels[2].Text := 'eingeloggt als: ' + Loginname;
    MainForm.getSysInspExecute(self);
    { TODO 1 -oSebesta -cLogin : Prozedur für das öffnen des Systems analog den Benutzerrechten }
  end
  else begin
    with frmLogin do begin
      button := Application.MessageBox
      (PChar('Benutzername oder Passwort fehlerhaft!'), 'Meldung', 21);
      if button = 4 Then begin
        editBenutzername.Text := '';
        editPasswort.Text := '';
        editBenutzername.SetFocus
      end
      else begin
        if frmLogin <> nil then begin
          frmLogin.Release;
          frmLogin := nil
        end;
      end;
    end;
  end;
end;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
  if frmLogin <> nil then begin
    frmLogin.Release;
    frmLogin := nil
  end;
end;

function checkLogin(var UserName: String): Boolean;
begin
  with datmNekropole1.ADOQuery_userlogin do begin
    Close;
    SQL.Text := 'select nvaShortName, nvaPassword from tab_user ';
    SQL.Text := SQL.Text + 'where nvaShortName = :ShortName';
    Parameters.ParamValues['ShortName'] := frmLogin.editBenutzername.text;
    Open
  end;
  
  if datmNekropole1.ADOQuery_userlogin.FieldValues['nvaShortName']
        = frmLogin.editBenutzername.Text Then begin
    if datmNekropole1.ADOQuery_userlogin.FieldValues['nvaPassword']
        = frmLogin.editPasswort.Text Then begin
      UserName := datmNekropole1.ADOQuery_userlogin.FieldValues['nvaShortName'];
      Result := True
    end;
  end
  else begin
      UserName := '';
      Result := False
  end;
  datmNekropole1.ADOQuery_userlogin.Close
end;


end.
