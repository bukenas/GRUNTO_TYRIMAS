﻿object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 773
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1024
    Top = 30
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Memo1: TMemo
    Left = 920
    Top = 56
    Width = 185
    Height = 697
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Button1: TButton
    Left = 920
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 514
    Width = 273
    Height = 158
    TabOrder = 2
    object Label2: TLabel
      Left = 100
      Top = 40
      Width = 70
      Height = 13
      Caption = 'rpm(0.02-300)'
    end
    object Label3: TLabel
      Left = 93
      Top = 8
      Width = 79
      Height = 19
      Caption = 'VARIKLIS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button2: TButton
      Left = 16
      Top = 118
      Width = 75
      Height = 25
      Caption = 'CCW'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 178
      Top = 118
      Width = 75
      Height = 25
      Caption = 'CW'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button_Stop: TButton
      Left = 97
      Top = 102
      Width = 75
      Height = 49
      Caption = 'STOP'
      TabOrder = 2
      OnClick = Button_StopClick
    end
    object Edit_RPM: TEdit
      Left = 97
      Top = 59
      Width = 75
      Height = 21
      TabOrder = 3
      Text = '1'
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 249
    Width = 273
    Height = 126
    TabOrder = 3
    object Label4: TLabel
      Left = 88
      Top = 8
      Width = 92
      Height = 18
      Caption = 'MATAVIMAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 117
      Top = 73
      Width = 44
      Height = 40
      Transparent = True
      Visible = False
    end
    object Label9: TLabel
      Left = 32
      Top = 37
      Width = 41
      Height = 13
      Caption = 'Periodas'
    end
    object Button_sampling_start: TButton
      Left = 14
      Top = 67
      Width = 75
      Height = 49
      Caption = 'START'
      TabOrder = 0
      OnClick = Button_sampling_startClick
    end
    object Button_sampling_stop: TButton
      Left = 184
      Top = 67
      Width = 75
      Height = 49
      Caption = 'STOP'
      TabOrder = 1
      OnClick = Button_sampling_stopClick
    end
    object ComboBox_sampling: TComboBox
      Left = 100
      Top = 34
      Width = 75
      Height = 21
      TabOrder = 2
      OnChange = ComboBox_samplingChange
    end
  end
  object tab1: TPageControl
    Left = 287
    Top = 16
    Width = 474
    Height = 656
    ActivePage = TREŠIO_SLĖGIO
    TabOrder = 4
    object KOMPRESINIS: TTabSheet
      Caption = 'KOMPRESINIS'
      object ListView1: TListView
        Left = 3
        Top = 0
        Width = 460
        Height = 417
        BorderWidth = 1
        Columns = <
          item
            Caption = 'Data Laikas'
            Width = 130
          end
          item
            Alignment = taCenter
            Caption = 'Nr.'
            Width = 40
          end
          item
            Alignment = taCenter
            Caption = 'Poslinkis'
            Width = 60
          end
          item
            Alignment = taCenter
            Caption = #302'tempimas'
            Width = 80
          end
          item
            Alignment = taCenter
            AutoSize = True
            Caption = 'Sl'#279'gis'
          end>
        ColumnClick = False
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object Panel6: TPanel
        Left = 3
        Top = 422
        Width = 460
        Height = 124
        ParentBackground = False
        TabOrder = 1
        object Label11: TLabel
          Left = 97
          Top = 1
          Width = 75
          Height = 41
          Alignment = taCenter
          Caption = 'Pertankinimo sl'#279'gis'
          WordWrap = True
        end
        object Label12: TLabel
          Left = 192
          Top = 74
          Width = 82
          Height = 13
          Caption = 'Maksimalus sl'#279'gis'
        end
        object Label16: TLabel
          Left = 195
          Top = 13
          Width = 52
          Height = 13
          Caption = 'Pauze, min'
        end
        object Label17: TLabel
          Left = 405
          Top = 13
          Width = 60
          Height = 13
          Caption = 'Pauze, min'
        end
        object Label18: TLabel
          Left = 330
          Top = 13
          Width = 69
          Height = 13
          Caption = 'Gamtinis sl'#279'gis'
        end
        object Label19: TLabel
          Left = 17
          Top = 1
          Width = 58
          Height = 30
          Alignment = taCenter
          Caption = 'Variklio pradinis rpm'
          WordWrap = True
        end
        object Label20: TLabel
          Left = 258
          Top = 1
          Width = 66
          Height = 30
          Alignment = taCenter
          Caption = 'Variklio gri'#382'imo rpm'
          WordWrap = True
        end
        object Edit_pertankslegis: TEdit
          Left = 116
          Top = 32
          Width = 40
          Height = 21
          TabOrder = 0
          Text = '10'
        end
        object Edit_maxslegis: TEdit
          Left = 201
          Top = 93
          Width = 65
          Height = 21
          TabOrder = 1
          Text = '100'
        end
        object Edit_pauze1: TEdit
          Left = 200
          Top = 32
          Width = 40
          Height = 21
          TabOrder = 2
          Text = '5'
        end
        object Edit_pauze2: TEdit
          Left = 409
          Top = 32
          Width = 40
          Height = 21
          TabOrder = 3
          Text = '5'
        end
        object Edit_gamtinis: TEdit
          Left = 347
          Top = 32
          Width = 40
          Height = 21
          TabOrder = 4
          Text = '6'
        end
        object Edit_pradinisRPM: TEdit
          Left = 23
          Top = 32
          Width = 40
          Height = 21
          TabOrder = 5
          Text = '10'
        end
        object Edit_backRPM: TEdit
          Left = 274
          Top = 32
          Width = 40
          Height = 21
          TabOrder = 6
          Text = '10'
        end
      end
      object Panel7: TPanel
        Left = 3
        Top = 552
        Width = 460
        Height = 74
        ParentBackground = False
        TabOrder = 2
        object Label13: TLabel
          Left = 17
          Top = 27
          Width = 86
          Height = 13
          Caption = 'Porinio slegio koef'
        end
        object Label14: TLabel
          Left = 162
          Top = 27
          Width = 156
          Height = 13
          Caption = 'Grei'#269'io ma'#382'inimo koeficientas, %'
        end
        object Label15: TLabel
          Left = 360
          Top = 27
          Width = 75
          Height = 13
          Caption = 'U'#382'laikymas, min'
        end
        object Edit_poriniokoef: TEdit
          Left = 33
          Top = 46
          Width = 50
          Height = 21
          TabOrder = 0
          Text = '0.1'
        end
        object Edit_mazinimopagaporin: TEdit
          Left = 200
          Top = 46
          Width = 50
          Height = 21
          TabOrder = 1
          Text = '10'
        end
        object Edit_uzlaikymas: TEdit
          Left = 368
          Top = 46
          Width = 50
          Height = 21
          TabOrder = 2
          Text = '10'
        end
        object CheckBox_porinio: TCheckBox
          Left = 17
          Top = 0
          Width = 220
          Height = 17
          Caption = 'Taikyti korekcij'#261' pagal porin'#303' sl'#279'g'#303
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object KIRPIMAS: TTabSheet
      Caption = '   KIRPIMAS   '
      ImageIndex = 1
      object ListView2: TListView
        Left = 25
        Top = 3
        Width = 368
        Height = 478
        Columns = <
          item
            Caption = 'Data Laikas'
            Width = 130
          end
          item
            Alignment = taCenter
            Caption = 'Nr.'
            Width = 40
          end
          item
            Alignment = taCenter
            Caption = 'Poslinkis'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = 'Kirpimo '#303'tempimas'
            Width = 100
          end>
        ColumnClick = False
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object Panel9: TPanel
        Left = 25
        Top = 487
        Width = 368
        Height = 137
        ParentBackground = False
        TabOrder = 1
        object Label24: TLabel
          Left = 40
          Top = 53
          Width = 94
          Height = 13
          Caption = 'Variklio pradinis rpm'
        end
        object Label25: TLabel
          Left = 200
          Top = 53
          Width = 118
          Height = 13
          Caption = 'Maksimalus poslinkis, mm'
        end
        object Edit_RPMpradinis2: TEdit
          Left = 64
          Top = 72
          Width = 50
          Height = 21
          TabOrder = 0
          Text = '20'
        end
        object Edit_maxposlinkis2: TEdit
          Left = 232
          Top = 72
          Width = 50
          Height = 21
          TabOrder = 1
          Text = '8'
        end
      end
    end
    object TREŠIO_SLĖGIO: TTabSheet
      Caption = 'TRE'#352'IO_SL'#278'GIO'
      ImageIndex = 2
      ExplicitLeft = 0
      object ListView3: TListView
        Left = 43
        Top = 14
        Width = 350
        Height = 467
        Columns = <
          item
            Caption = 'Data Laikas'
            Width = 130
          end
          item
            Alignment = taCenter
            Caption = 'Nr.'
            Width = 40
          end
          item
            Alignment = taCenter
            Caption = 'Poslinkis, mm'
            Width = 80
          end
          item
            Alignment = taCenter
            Caption = #302'tempimas, kPa'
            Width = 90
          end>
        ColumnClick = False
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
      end
      object Panel10: TPanel
        Left = 43
        Top = 487
        Width = 350
        Height = 137
        ParentBackground = False
        TabOrder = 1
        object Label26: TLabel
          Left = 40
          Top = 53
          Width = 94
          Height = 13
          Caption = 'Variklio pradinis rpm'
        end
        object Label27: TLabel
          Left = 200
          Top = 53
          Width = 118
          Height = 13
          Caption = 'Maksimalus poslinkis, mm'
        end
        object Edit_RPMpradinis3: TEdit
          Left = 56
          Top = 72
          Width = 50
          Height = 21
          TabOrder = 0
          Text = '20'
        end
        object Edit_maxposlinkis3: TEdit
          Left = 232
          Top = 72
          Width = 50
          Height = 21
          TabOrder = 1
          Text = '8'
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 12
    Width = 273
    Height = 85
    TabOrder = 5
    object Label5: TLabel
      Left = 151
      Top = 56
      Width = 85
      Height = 13
      Caption = 'NOT CONNECTED'
    end
    object ComboBox_Comport: TComboBox
      Left = 16
      Top = 19
      Width = 83
      Height = 21
      TabOrder = 0
      Text = 'Select port'
    end
    object Button_Connect: TButton
      Left = 136
      Top = 10
      Width = 117
      Height = 40
      Caption = 'Connect'
      TabOrder = 1
      OnClick = Button_ConnectClick
    end
    object Button5: TButton
      Left = 16
      Top = 46
      Width = 83
      Height = 25
      Caption = 'Rescan'
      TabOrder = 2
      OnClick = Button5Click
    end
  end
  object Memo2: TMemo
    Left = 776
    Top = 43
    Width = 138
    Height = 702
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Panel4: TPanel
    Left = 8
    Top = 111
    Width = 273
    Height = 124
    TabOrder = 7
    object Label6: TLabel
      Left = 24
      Top = 31
      Width = 62
      Height = 13
      Caption = 'Poslinkis, mm'
    end
    object Label7: TLabel
      Left = 114
      Top = 31
      Width = 73
      Height = 13
      Caption = #302'tempimas, kPa'
    end
    object Label8: TLabel
      Left = 209
      Top = 31
      Width = 51
      Height = 13
      Caption = 'Sl'#279'gis, kPa'
    end
    object Label_slegis: TLabel
      Left = 215
      Top = 67
      Width = 14
      Height = 19
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_pos2: TLabel
      Left = 119
      Top = 67
      Width = 14
      Height = 19
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_pos1: TLabel
      Left = 31
      Top = 67
      Width = 14
      Height = 19
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 88
      Top = 3
      Width = 100
      Height = 18
      Caption = 'PARAMETRAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button6: TButton
      Left = 18
      Top = 92
      Width = 62
      Height = 25
      Caption = 'Zero 1'
      TabOrder = 0
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 108
      Top = 92
      Width = 62
      Height = 25
      Caption = 'Zero 2'
      TabOrder = 1
      OnClick = Button7Click
    end
  end
  object Panel5: TPanel
    Left = 287
    Top = 674
    Width = 474
    Height = 41
    TabOrder = 8
    object Button4: TButton
      Left = 169
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save to File'
      TabOrder = 0
      OnClick = Button4Click
    end
    object Button8: TButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Clear Table'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object Panel8: TPanel
    Left = 8
    Top = 389
    Width = 273
    Height = 107
    TabOrder = 9
    object Label21: TLabel
      Left = 34
      Top = 32
      Width = 59
      Height = 36
      Alignment = taCenter
      Caption = 'Pavyzd'#382'io plotas, cm2'
      WordWrap = True
    end
    object Label22: TLabel
      Left = 178
      Top = 45
      Width = 58
      Height = 13
      Caption = 'Koeficientas'
    end
    object Label23: TLabel
      Left = 88
      Top = 8
      Width = 102
      Height = 18
      Caption = 'NUSTATYMAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit_pvzplotas: TEdit
      Left = 34
      Top = 64
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '100'
    end
    object Edit_koefjegos: TEdit
      Left = 183
      Top = 64
      Width = 53
      Height = 21
      TabOrder = 1
      Text = '2'
    end
  end
  object Timer_monitoring: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer_monitoringTimer
    Left = 808
    Top = 432
  end
  object Timer_sampling: TTimer
    Enabled = False
    OnTimer = Timer_samplingTimer
    Left = 808
    Top = 376
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.csv'
    Filter = 'csv|*.csv'
    Left = 808
    Top = 488
  end
  object Timer_variklio: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer_variklioTimer
    Left = 808
    Top = 552
  end
  object Timer_porinioslegio: TTimer
    Enabled = False
    OnTimer = Timer_porinioslegioTimer
    Left = 992
    Top = 448
  end
  object Timer_uzlaikymo: TTimer
    Enabled = False
    OnTimer = Timer_uzlaikymoTimer
    Left = 808
    Top = 688
  end
  object Timer_kompresinis: TTimer
    Enabled = False
    OnTimer = Timer_kompresinisTimer
    Left = 992
    Top = 384
  end
  object Timer_delay: TTimer
    Enabled = False
    OnTimer = Timer_delayTimer
    Left = 992
    Top = 552
  end
  object Timer_sampling2: TTimer
    Enabled = False
    OnTimer = Timer_sampling2Timer
    Left = 808
    Top = 304
  end
  object Timer_sampling3: TTimer
    Enabled = False
    OnTimer = Timer_sampling3Timer
    Left = 808
    Top = 248
  end
  object Timer_poslinkio: TTimer
    Enabled = False
    Left = 984
    Top = 240
  end
end
