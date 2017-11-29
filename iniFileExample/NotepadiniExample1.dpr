program NotepadiniExample1;

uses
  Vcl.Forms,
  NotepadiniFile1 in 'NotepadiniFile1.pas' {frm_NotepadiniFile};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_NotepadiniFile, frm_NotepadiniFile);
  Application.Run;
end.
