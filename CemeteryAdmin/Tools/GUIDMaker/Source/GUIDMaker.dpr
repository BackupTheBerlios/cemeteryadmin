program GUIDMaker;

uses
  Forms,
  GUID_Maker in 'GUID_Maker.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'GUIDMaker 1.0';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
