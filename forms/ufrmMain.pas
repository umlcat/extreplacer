unit ufrmMain;

interface

uses
  {$IFDEF FPC}
  LCLIntf, LCLType, LMessages,
  {$ENDIF}
  Messages, SysUtils, Classes, Graphics,
  Controls, Forms,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, MaskEdit,
  //ToolEdit,
  CheckLst, EditBtn,
  uktossys, uktossearchfiles,
  uktstrings,
  uktmsgdlgtypes, uktmsgdlgs, uktmsgdlgsmemos,
  ResStrs, ufrmAbout;

type

  { TfrmMain }

  TfrmMain = class(TForm)
    sbStatusBar: TStatusBar;
    pnTop: TPanel;
    btnExit: TBitBtn;
    chbConfirmReplacement: TCheckBox;
    btnAbout: TBitBtn;
    btnOptions: TBitBtn;
    pnCtrls: TPanel;
    deedFilePath: TDirectoryEdit;
    btnFileSearch: TBitBtn;
    btnFileReplace: TBitBtn;
    chlbDestination: TCheckListBox;
    lblFilePath: TLabel;
    lblSourceExt: TLabel;
    lblDestExt: TLabel;
    btnSelectNone: TBitBtn;
    btnSelectALL: TBitBtn;
    edSourceExt: TEdit;
    edDestExt: TEdit;
    txtSourceExt: TEdit;
    txtDestExt: TEdit;
    btnPathClear: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFileSearchClick(Sender: TObject);
    procedure btnFileReplaceClick(Sender: TObject);
    procedure deedFilePathChange(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure btnSelectALLClick(Sender: TObject);
    procedure btnSelectNoneClick(Sender: TObject);
    procedure btnPathClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    FilePath: string;

    SourceExt: string;
    DestExt: string;

    SourceWcard: string;
    DestWcard: string;

    procedure LoadValues();
    procedure LoadStrings();

    procedure FileSearch();
    procedure FileReplace();
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.LFM}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  LoadValues;
  LoadStrings;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
//
end;

procedure TfrmMain.LoadValues();
var AppPath, ConfigFilename: string; F: TextFile;
begin
  AppPath := ParamStr(0);
  ConfigFilename := ExtractFileDir(AppPath) + DirectorySeparator + 'ExtReplacer.txt';
  if uktossys.FileFound(ConfigFilename) then
  begin
    System.Assign(F, ConfigFilename);
    System.Reset(F);

//    if not System.EoF(F)
//      then System.ReadLn(F, WindowsFolder);

    System.Close(F);
  end else
  begin
//    WindowsFolder := 'C:\WINDOWS\SYSTEM';
  end
end;

procedure TfrmMain.LoadStrings();
begin
  Self.Caption := resTfrMain_Caption;

  chbConfirmReplacement.Caption := reschbConfirmReplaced_Caption;

  btnPathClear.Caption := resbtnPathClear_Caption;

  btnFileReplace.Caption := resbtnFileReplace_Caption;
  btnFileSearch.Caption  := resbtnFileSearch_Caption;

  btnExit.Caption    := resbtnExit_Caption;
  btnAbout.Caption   := resbtnAbout_Caption;
  btnOptions.Caption := resbtnOptions_Caption;
  btnSelectALL.Caption  := resbtnSelectALL_Caption;
  btnSelectNone.Caption := resbtnSelectNone_Caption;

  lblSourceExt.Caption := reslblSourceExt_Caption;
  lblDestExt.Caption   := reslblDestExt_Caption;
  lblFilePath.Caption  := reslblFilePath_Caption;
  deedFilePath.Text := '';
end;

procedure TfrmMain.FileSearch();
var SearchRecord: TSearchFilesRecord;
    FileRecord: TFileRecord; ACount: Integer;
begin
  with chlbDestination.Items do
  begin
    Clear;

    SourceExt := TrimCopy(RemoveCharsCopy(edSourceExt.Text, '*.?'));
    DestExt   := TrimCopy(RemoveCharsCopy(edDestExt.Text, '*.?'));

    SourceWcard := '*.' + TrimCopy(RemoveCharCopy(edSourceExt.Text, '?'));
    DestWcard   := '*.' + TrimCopy(RemoveCharCopy(edDestExt.Text, '?'));

    FileSearchInit(SearchRecord, FilePath + DirectorySeparator + SourceWcard, faArchive);

    ACount := 0;
    while (FileSearchNext(SearchRecord, FileRecord)) do
    begin
      if (
        (not FileRecord.IsOwnFolder) and
        (not FileRecord.IsParentFolder)) then
      begin
        Add(FileRecord.FileName + FileRecord.FileExt);
        Inc(ACount);
      end; 
    end;

    FileSearchDone(SearchRecord);
  end;
  if (ACount = 0)
    then ShowMessage(resNotFound);
end;

procedure TfrmMain.FileReplace();
var I: Integer; Msg, Sourcename, Destname: string;
begin
  with chlbDestination, Items do
  begin
    for I := 0 to Pred(Count) do
    begin
      if (Checked[i]) then
      begin
        Sourcename := Items[i] + ExtensionSeparator + SourceExt;
        Destname   := Items[i] + ExtensionSeparator + DestExt;
        Msg := Format(resConfirmReplacement, [Sourcename, Destname]);

        if (MessageDlg(Msg, mtConfirmation, [mbYes, mbNo]) = mbYes) then
        begin
          Sourcename := FilePath + DirectorySeparator + Sourcename;
          Destname   := FilePath + DirectorySeparator + Destname;

          FileRename(Sourcename, Destname);

          if (chbConfirmReplacement.Checked)
            then ShowMessage(#39 + Sourcename + #39 + resReplaced);
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.btnFileSearchClick(Sender: TObject);
begin
  FileSearch();
end;

procedure TfrmMain.btnFileReplaceClick(Sender: TObject);
begin
  FileReplace();
  FileSearch();
end;

procedure TfrmMain.deedFilePathChange(Sender: TObject);
begin
  FilePath := deedFilePath.Text;
end;

procedure TfrmMain.btnAboutClick(Sender: TObject);
begin
  ufrmAbout.Ejecutar();
end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  Self.Close();
end;

procedure TfrmMain.btnOptionsClick(Sender: TObject);
begin
//
end;

procedure TfrmMain.btnSelectALLClick(Sender: TObject);
var I: Integer;
begin
  with chlbDestination, Items do
  begin
    for I := 0 to Pred(Count) do
    begin
      Checked[i] := TRUE;
    end;
  end;
end;

procedure TfrmMain.btnSelectNoneClick(Sender: TObject);
var I: Integer;
begin
  with chlbDestination, Items do
  begin
    for I := 0 to Pred(Count) do
    begin
      Checked[i] := FALSE;
    end;
  end;
end;

procedure TfrmMain.btnPathClearClick(Sender: TObject);
begin
  deedFilePath.Text := '';
  // clear the folder path control
end;

end.
