unit SysInsp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TfrmSysInspector = class(TForm)
    trvSysInspector: TTreeView;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
end;

var
  SysInspIsShown: Boolean;

implementation

{$R *.dfm}

uses Main;

procedure TfrmSysInspector.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SysInspIsShown = True then begin
    Action := caFree;
    SysInspIsShown := False
  end;
end;

procedure TfrmSysInspector.FormCreate(Sender: TObject);
var i, Hoehe: Integer;
begin
Hoehe := 1;
  For i:=0 to MainForm.ComponentCount-1 do begin
    If MainForm.Components[i] is TToolBar then begin
      If (MainForm.Components[i] as TToolBar).Visible then
        Inc(Hoehe,(Mainform.Components[i] as TToolBar).Height);
      end
    Else If Mainform.Components[i] is TStatusBar then begin
        Inc(Hoehe,(Mainform.Components[i] as TStatusBar).Height);
    end;
  end;
  self.Height := MainForm.ClientHeight - Hoehe - 3;
  self.Top := 0;
  self.Left := 0
end;

end.
