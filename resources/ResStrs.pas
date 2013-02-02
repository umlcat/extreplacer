unit ResStrs;

interface

{$INCLUDE 'Language.inc'}

{$IFDEF LanguageEnglish}
const
  resProductName      = 'File Extension Replacer';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'About '+ resProductName;

  resbtnOK_Caption      = 'OK';
  resbtnCancel_Caption  = 'Cancel';
  resbtnExit_Caption    = 'E&xit';
  resbtnAbout_Caption   = '&About';
  resbtnOptions_Caption = '&Options';
  resbtnHelp_Caption    = 'Help';
  resbtnSelectALL_Caption  = 'Select &All;
  resbtnSelectNone_Caption = 'Select &None;

  resbtnPathClear_Caption   = 'Clear';

  resbtnFileReplace_Caption = 'Replace';
  resbtnFileSearch_Caption  = 'Search';

  reschbConfirmReplaced_Caption = 'Confirm Files Replaced';

  reslblFilePath_Caption    = 'File Path:';
  reslblSourceExt_Caption   = 'Source Extension:';
  reslblDestExt_Caption     = 'Destination Extension:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = '2.0 Version';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmReplacement = 'Are you sure you want to replace "%s" by "%s" ?';
  resReplaced           = ' replaced.';
  resNotFound           = 'Files not Found.';
  resUnderConstruction  = 'Under Construction';
{$ENDIF}

{$IFDEF LanguageSpanish}
const
  resProductName      = 'Reemplazador de Extension de Fichero';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'Acerca de ' + resProductName;

  resbtnOK_Caption      = 'Aceptar';
  resbtnCancel_Caption  = 'Cancelar';
  resbtnExit_Caption    = 'Salir';
  resbtnAbout_Caption   = '&Acerca';
  resbtnOptions_Caption = '&Opciones';
  resbtnHelp_Caption    = 'Ayuda';
  resbtnSelectALL_Caption  = 'Seleccionar To&dos';
  resbtnSelectNone_Caption = 'Seleccionar &Ninguno';

  resbtnPathClear_Caption   = 'Limpiar';

  resbtnFileReplace_Caption = 'Reemplazar';
  resbtnFileSearch_Caption  = 'Buscar';

  reschbConfirmReplaced_Caption = 'Confirmar Ficheros Reemplazados';

  reslblFilePath_Caption    = 'Ruta de Acceso:';
  reslblSourceExt_Caption   = 'Extension Fuente:';
  reslblDestExt_Caption     = 'Extension Destino:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = 'Version 2.0';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmReplacement = 'Esta seguro que quiere reemplazar "%s" por "%s" ?';
  resReplaced           = ' reemplazado.';
  resNotFound           = 'No se encontraron Ficheros.';
  resUnderConstruction  = 'Bajo Construccion';
{$ENDIF}

{$IFDEF LanguageLatam}
const
  resProductName      = 'Reemplazador de Extension de Archivo';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'Acerca de ' + resProductName;

  resbtnOK_Caption      = 'Aceptar';
  resbtnCancel_Caption  = 'Cancelar';
  resbtnExit_Caption    = 'Salir';
  resbtnAbout_Caption   = '&Acerca';
  resbtnOptions_Caption = '&Opciones';
  resbtnHelp_Caption    = 'Ayuda';
  resbtnSelectALL_Caption  = 'Seleccionar To&dos';
  resbtnSelectNone_Caption = 'Seleccionar &Ninguno';

  resbtnPathClear_Caption   = 'Limpiar';

  resbtnFileReplace_Caption = 'Reemplazar';
  resbtnFileSearch_Caption  = 'Buscar';

  reschbConfirmReplaced_Caption = 'Confirmar Archivos Reemplazados';

  reslblFilePath_Caption    = 'Ruta de Acceso:';
  reslblSourceExt_Caption   = 'Extension Fuente:';
  reslblDestExt_Caption     = 'Extension Destino:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = 'Version 2.0';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmReplacement = 'Esta seguro que quiere reemplazar "%s" por "%s" ?';
  resReplaced           = ' reemplazado.';
  resNotFound           = 'No se encontraron archivos.';
  resUnderConstruction  = 'Bajo Construccion';
{$ENDIF}

{$IFDEF LanguageFrench}
const
  resProductName      = 'Reemplazateur pour Extension d*Archives';
resourcestring
  resTfrMain_Caption  = resProductName;
  resTfrmAbout_Caption  = 'Sur ' + resProductName;

  resbtnOK_Caption      = 'OK';
  resbtnCancel_Caption  = 'Annuler';
  resbtnExit_Caption    = 'Sortir';
  resbtnAbout_Caption   = '&Sur...';
  resbtnOptions_Caption = '&Options';
  resbtnHelp_Caption    = 'Aide';
  resbtnSelectALL_Caption  = 'Choisir To&us;
  resbtnSelectNone_Caption = 'Choisir &Aucun';

  resbtnPathClear_Caption   = 'Clear';

  resbtnFileReplace_Caption = 'Remplacez';
  resbtnFileSearch_Caption  = 'Chercher';

  reschbConfirmReplaced_Caption = 'Confirmer des Archives Remplacés';

  reslblFilePath_Caption    = 'Acces Chemin:';
  reslblSourceExt_Caption   = 'Extension du Source:';
  reslblDestExt_Caption     = 'Extension du Destination:';

  reslblProductName_Caption = resProductName;
  reslblVersion_Caption     = 'Version 2.0';
  reslblCopyright_Caption   = 'star-dev (c)';
  reslblComments_Caption    = 'star-dev.com';

  resConfirmReplacement = 'Il est sûr qu*il veut reemplazer "%s" par "%s" ?';
  resReplaced           = ' remplacé.';
  resNotFound           = 'On n*a pas trouvé d*archives.';
  resUnderConstruction  = 'Sous Construction';
{$ENDIF}

implementation

end.
