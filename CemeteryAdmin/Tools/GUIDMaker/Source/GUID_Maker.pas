unit GUID_Maker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ADODB, Grids, DBGrids, ComObj, ActiveX, ComCtrls,
  ExtCtrls, StdActns, ActnList, XPStyleActnCtrls, ActnMan, CustomizeDlg, IniFiles, Clipbrd;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    TabSheet2: TTabSheet;
    ActionManager1: TActionManager;
    FileOpen1: TFileOpen;
    ADOQuery1: TADOQuery;
    EditCopy1: TEditCopy;
    Panel1: TPanel;
    Panel2: TPanel;
    LabeledEdit2: TLabeledEdit;
    Label2: TLabel;
    Button4: TButton;
    Button1: TButton;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    LabeledEdit3: TLabeledEdit;
    Panel3: TPanel;
    Button6: TButton;
    Button3: TButton;
    Button2: TButton;
    Button5: TButton;
    LabeledEdit1: TLabeledEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet1Hide(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

type
  EConnectionInvalid = class(Exception)
end;


var
  Form1: TForm1;
  UDLPath: string = '';
  ConnectionString: string;

implementation

{$R *.dfm}

function CreateGuid: string;
var
  ID:TGuid;
begin

  Result := '';
  if CoCreateGuid(ID) = S_OK then
    Result := GUIDToString(ID);

end;

function GetUDLPath: string;
var Ini: TIniFile;
begin
  Ini := TIniFile.Create('GUIDMaker.ini');
  Result := Ini.ReadString('Pfade','UDL','keine Datei gespeichert');
  Ini.Free
end;

function GetConnectionString: string;

begin
Result:= 'FILE NAME='+ UDLPath;
end;


procedure TForm1.Button4Click(Sender: TObject);
begin

LabeledEdit2.Text := CreateGuid;
LabeledEdit2.SetFocus;
LabeledEdit2.SelectAll;
Clipboard.AsText := LabeledEdit2.SelText;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

LabeledEdit1.Text := FileOpen1.Dialog.FileName;
UDLPath := LabeledEdit1.Text;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin

try
  ADOTable1.ConnectionString := 'FILE NAME='+ LabeledEdit1.Text;
  ADOTable1.Active := True;
  ShowMessage('Verbindungstest erfolgreich - Auf geht''s!');
except
  on EOleError do ShowMessage('Verbindungsfehler - entweder wurde keine UDL-Datei angegeben oder diese ist nicht richtig konfiguriert!');
  else
  ShowMessage('Verbindungsfehler - entweder wurde keine UDL-Datei angegeben oder diese ist nicht richtig konfiguriert!');
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var Ini: TIniFile;
begin

Ini := TIniFile.Create('GUIDMaker.ini');
Ini.WriteString('Pfade', 'UDL' ,LabeledEdit1.Text);
Ini.Free
end;

procedure TForm1.Button6Click(Sender: TObject);

var Ini: TIniFile;
begin

Ini := TIniFile.Create('GUIDMaker.ini');
LabeledEdit1.Text := Ini.ReadString('Pfade','UDL','keine Datei gespeichert');
Ini.Free

end;

procedure TForm1.Button1Click(Sender: TObject);
var sql, Guid: string; Z,I: integer;

begin
ADOTable1.Active := False;
ADOTable1.ConnectionString := ConnectionString;
try
  ADOTable1.Active := True;

  ADOQuery1.ConnectionString := ConnectionString;

  Z := StrToInt(LabeledEdit3.Text);
  for I := 1 to Z do
  begin
    Guid := CreateGuid;
    sql := 'Insert gid_admin (guid) Values ("' + Guid + '")';
    ADOQuery1.SQL.Add(sql);
    ADOQuery1.ExecSQL;
    ADOQuery1.SQL.Delete(0);
  end;
  ADOTable1.Active := False;
  ADOTable1.Active := True;
  LabeledEdit3.Text := '';
  LabeledEdit3.SetFocus;

except
  on EOleError do 
  begin
    ShowMessage(' Es wurde keine UDL-Datei geladen');
    PageControl1.ActivePage := TabSheet1;
    LabeledEdit1.SetFocus;
  end;
  on EConvertError do
  begin
    ShowMessage('Es wurde kein gültiger Integerwert bei Anzahl eingegegeben!');
    LabeledEdit3.SetFocus;
end
  else
  ShowMessage('Verbindungsfehler');
end;
  


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
UDLPath := GetUDLPath;
ConnectionString := GetConnectionString;
end;

procedure TForm1.TabSheet1Show(Sender: TObject);
begin
LabeledEdit1.Text := UDLPath;
end;

procedure TForm1.TabSheet1Hide(Sender: TObject);
begin
  if UDLPath = 'keine Datei gespeichert' then
  begin
    try
      raise EConnectionInvalid.Create('keine UDL-Datei gespeichert, bitte angeben');
    except
      on EConnectionInvalid do  ShowMessage('keine UDL-Datei gespeichert, bitte angeben');
    end;
  
    
    PageControl1.ActivePage := TabSheet2;
    TabSheet2.Visible := False;
    PageControl1.ActivePage := TabSheet1;
    LabeledEdit1.SetFocus;
  end
  else
  begin
    ConnectionString := GetConnectionString;
  end
end;

end.
