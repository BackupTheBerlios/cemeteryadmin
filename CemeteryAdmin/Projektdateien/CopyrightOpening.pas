unit CopyrightOpening;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Login, DB, ADODB;

type
  TfrmCopyrightOpening = class(TForm)
    Copyrightvermerk: TLabel;
    CopyrightOpeningTimer: TTimer;
    procedure CopyrightOpeningTimerTimer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmCopyrightOpening: TfrmCopyrightOpening;

implementation

{$R *.dfm}

procedure TfrmCopyrightOpening.CopyrightOpeningTimerTimer(Sender: TObject);
begin
  Hide;
  if frmLogin = nil then frmLogin := TfrmLogin.Create(Application);
  frmLogin.Show;
  Free
end;

end.
