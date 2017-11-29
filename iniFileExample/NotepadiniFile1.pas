{Coder: HyperXMan or Halil Han Badem :-P }

unit NotepadiniFile1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_NotepadiniFile = class(TForm)
    Border: TMemo;
    btn_iniSave: TButton;
    btn_iniLoad: TButton;
    btn_chfont: TButton;
    btn_chcolor: TButton;
    Font_D: TFontDialog;
    Color_D: TColorDialog;
    procedure btn_chfontClick(Sender: TObject);
    procedure btn_chcolorClick(Sender: TObject);
    procedure iniLoad;
    procedure btn_iniLoadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_iniSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_NotepadiniFile: Tfrm_NotepadiniFile;

implementation

{$R *.dfm}
 ///Bismillahirahmanirahim
Procedure Tfrm_NotepadiniFile.iniLoad();
var
 iniList: TStringlist;
begin
 iniList := TStringList.Create;
 if FileExists('iniFile.ini', True) then    // this file is controlling...
 begin
   iniList.LoadFromFile('iniFile.ini');
   Border.Color := StringToColor(iniList.Strings[0]);
   Border.Font.Name := iniList.Strings[1];
   Border.Font.Size := StrToInt(iniList.Strings[2]);

   Font_D.Font.Name := iniList.Strings[1];
   Font_D.Font.Size := StrToInt(iniList.Strings[2]);

   Color_D.Color := StringToColor(iniList.Strings[0]);
 end;
end;

procedure Tfrm_NotepadiniFile.btn_chcolorClick(Sender: TObject);
begin
 if Color_D.Execute then
 begin
  Border.Color := Color_D.Color;
 end;
end;

procedure Tfrm_NotepadiniFile.btn_chfontClick(Sender: TObject);
begin
 if Font_D.Execute then
 begin
  Border.Font := Font_D.Font;
 end;
end;

procedure Tfrm_NotepadiniFile.btn_iniLoadClick(Sender: TObject);
begin
 iniLoad;
end;

procedure Tfrm_NotepadiniFile.btn_iniSaveClick(Sender: TObject);
var
 Writeini: TStringList;
begin
  Writeini := TStringList.Create;
  Writeini.Add(ColorToString(Color_D.Color));
  Writeini.Add(Font_D.Font.Name);
  Writeini.Add(IntToStr(Font_D.Font.Size));
  Writeini.SaveToFile('iniFile.ini');
end;

procedure Tfrm_NotepadiniFile.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 btn_iniSaveClick(sender);
end;

procedure Tfrm_NotepadiniFile.FormCreate(Sender: TObject);
begin
 iniLoad;
end;

end.

/// Elhamdüllilah!