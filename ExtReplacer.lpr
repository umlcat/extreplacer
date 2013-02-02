program ExtReplacer;

{%File 'resources\Language.inc'}

uses
  Forms,
  ufrmMain in 'forms\ufrmMain.pas' {frmMain},
  ResStrs in 'resources\ResStrs.pas',
  ufrmAbout in 'forms\ufrmAbout.pas' {frmAbout};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
