unit Login;

{*********************************************************************************
  ********************************************************************************
   Copyright (C) 2004 by CemeteryAdmin-Team

   This file is part of the CemeteryAdmin-Codesource.

   CemeteryAdmin is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License as published
   by the Free Software Foundation; either version 2, or (at your option)
   any later version.

   CemeteryAdmin-Codesource is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
   See the GNU General Public License for more details.
   http://www.fsf.org/licenses/gpl.html

   You should have received a copy of the GNU General Public License
   along with the CemeteryAdmin-Codesource; see the file COPYING.  If not,
   write to the Free Software Foundation, 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.
  *********************************************************************************

   Last modification: $Id: Login.pas,v 1.6 2004/01/12 16:22:13 sebtom Exp $

***********************************************************************************
***********************************************************************************}
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

  function checkLogin(var UserName: String): Boolean;
      
var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var button: Integer; Loginname: String; Login: Boolean;

begin
  Loginname := '';
  Login := checkLogin(Loginname);
  if Login = True Then begin
    if frmLogin <> nil then begin
        frmLogin.Release;
        frmLogin := nil
    end;
  MainForm.StatusBarMain.Panels[2].Text := 'eingeloggt als: ' + Loginname;
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
