unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, ActnMan, ActnCtrls, ActnMenus;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    Edit1: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    WindowMinimizeItem: TMenuItem;
    StatusBarMain: TStatusBar;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileSave1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    WindowTileVertical1: TWindowTileVertical;
    WindowTileItem2: TMenuItem;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ImageList1: TImageList;
    Administration1: TMenuItem;
    User1: TMenuItem;
    Friedhfe1: TMenuItem;
    System1: TMenuItem;
    System2: TMenuItem;
    neu1: TMenuItem;
    Usersuchen1: TMenuItem;
    Usersuchen2: TMenuItem;
    Beenden1: TMenuItem;
    Datenkonvertierung1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    einloggenals1: TMenuItem;
    ausloggen1: TMenuItem;
    getLogin: TAction;
    getLogout: TAction;
    SysBeenden: TAction;
    Ansicht1: TMenuItem;
    Systeminspektor1: TMenuItem;
    getSysInsp: TAction;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure getLoginExecute(Sender: TObject);
    procedure getLogoutExecute(Sender: TObject);
    procedure SysBeendenExecute(Sender: TObject);
    procedure getSysInspExecute(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure CreateMDIChild(const Name: string);
  public
    { Public-Deklarationen }

  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses CHILDWIN, about, Login, SysInsp;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { Neues untergeordnetes MDI-Fenster erzeugen }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TMainForm.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.getLoginExecute(Sender: TObject);
begin
{ TODO 1 -oSebesta -cLogin : Prozedur zum schlieﬂen aller offenen Fenster }
  if frmLogin = nil then begin
    frmLogin := TfrmLogin.Create(Application);
    frmLogin.Show
  end;
end;

procedure TMainForm.getLogoutExecute(Sender: TObject);
begin
{ TODO 1 -oSebesta -cLogin : Prozedur zum schlieﬂen aller offenen Fenster }
StatusBarMain.Panels[2].Text := 'kein Benutzer eingeloggt'
end;

procedure TMainForm.SysBeendenExecute(Sender: TObject);
begin
MainForm.Close
end;

procedure TMainForm.getSysInspExecute(Sender: TObject);
begin
  if SysInspector = False Then begin
    TfrmSysInspector.Create(MainForm);
    SysInspector := True
  end
end;

end.
