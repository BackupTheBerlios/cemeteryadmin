unit userAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmUserAdmin = class(TForm)
    btnUserFind: TButton;
    labeSearch: TLabeledEdit;
    labePasswort: TLabeledEdit;
    labeShortname: TLabeledEdit;
    CheckBox1: TCheckBox;
    labeTitle: TLabeledEdit;
    labeFirstname: TLabeledEdit;
    labeLastname: TLabeledEdit;
    labeBirthday: TLabeledEdit;
    ilbxUsergroups: TListBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnPasswortChange: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    labGroups: TLabel;
    BitBtn5: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmUserAdmin: TfrmUserAdmin;

implementation

{$R *.dfm}

end.
