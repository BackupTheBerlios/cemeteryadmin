unit DatenNekropole1;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdatmNekropole1 = class(TDataModule)
    ADOQuery_userlogin: TADOQuery;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  datmNekropole1: TdatmNekropole1;

implementation

{$R *.dfm}

end.
