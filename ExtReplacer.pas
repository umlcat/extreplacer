program ExtReplacer;

{$MODE Delphi}

{%File 'resources\Language.inc'}

uses
  Forms, Interfaces,
  ufrmMain in 'forms\ufrmMain.pas' {frmMain},
  ResStrs in 'resources\ResStrs.pas',
  ufrmAbout in 'forms\ufrmAbout.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
