object frm_NotepadiniFile: Tfrm_NotepadiniFile
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Notepad iniFile Example'
  ClientHeight = 305
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Border: TMemo
    Left = 0
    Top = 56
    Width = 591
    Height = 249
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 80
  end
  object btn_iniSave: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btn_iniSave'
    TabOrder = 1
    OnClick = btn_iniSaveClick
  end
  object btn_iniLoad: TButton
    Left = 105
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btn_iniLoad'
    TabOrder = 2
    OnClick = btn_iniLoadClick
  end
  object btn_chfont: TButton
    Left = 406
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btn_chfont'
    TabOrder = 3
    OnClick = btn_chfontClick
  end
  object btn_chcolor: TButton
    Left = 487
    Top = 16
    Width = 75
    Height = 25
    Caption = 'btn_chcolor'
    TabOrder = 4
    OnClick = btn_chcolorClick
  end
  object Font_D: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 240
    Top = 152
  end
  object Color_D: TColorDialog
    Left = 296
    Top = 152
  end
end
