object MainForm: TMainForm
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
    Top = 357
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
    Top = 225
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
    Top = 8
    Width = 409
    Height = 683
    ActivePage = MATAVIMAS1
    TabOrder = 4
    object MATAVIMAS1: TTabSheet
      Caption = 'MATAVIMAS1'
      object ListView1: TListView
        Left = 25
        Top = 3
        Width = 352
        Height = 432
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
            Caption = 'J'#279'ga'
            Width = 60
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
        Top = 462
        Width = 395
        Height = 67
        ParentBackground = False
        TabOrder = 1
        object Label11: TLabel
          Left = 57
          Top = 16
          Width = 70
          Height = 13
          Caption = 'Reliktinis sl'#279'gis'
        end
        object Label12: TLabel
          Left = 256
          Top = 16
          Width = 69
          Height = 13
          Caption = 'Gamtinis sl'#279'gis'
        end
        object Edit1: TEdit
          Left = 57
          Top = 35
          Width = 64
          Height = 21
          TabOrder = 0
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 257
          Top = 35
          Width = 65
          Height = 21
          TabOrder = 1
          Text = 'Edit2'
        end
      end
      object Panel7: TPanel
        Left = 3
        Top = 535
        Width = 395
        Height = 117
        ParentBackground = False
        TabOrder = 2
        object Edit3: TEdit
          Left = 48
          Top = 35
          Width = 65
          Height = 21
          TabOrder = 0
          Text = 'Edit3'
        end
        object Edit4: TEdit
          Left = 168
          Top = 37
          Width = 65
          Height = 21
          TabOrder = 1
          Text = 'Edit4'
        end
        object Edit5: TEdit
          Left = 288
          Top = 40
          Width = 65
          Height = 21
          TabOrder = 2
          Text = 'Edit5'
        end
      end
    end
    object MATAVIMAS2: TTabSheet
      Caption = 'MATAVIMAS2'
      ImageIndex = 1
      object ListView2: TListView
        Left = 25
        Top = 24
        Width = 350
        Height = 432
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
            Caption = 'J'#279'ga'
            Width = 60
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
    end
    object MATAVIMAS3: TTabSheet
      Caption = 'MATAVIMAS3'
      ImageIndex = 2
      object ListView3: TListView
        Left = 11
        Top = 3
        Width = 372
        Height = 453
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
          end
          item
            Alignment = taCenter
            Caption = 'J'#279'ga'
          end
          item
            Alignment = taCenter
            AutoSize = True
            Caption = 'Sl'#279'gis'
          end
          item
            Caption = 'Sl'#279'gis'
          end>
        ColumnClick = False
        GridLines = True
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 8
    Width = 273
    Height = 81
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
    Left = 729
    Top = 43
    Width = 185
    Height = 702
    Lines.Strings = (
      'Memo2')
    ScrollBars = ssVertical
    TabOrder = 6
  end
  object Panel4: TPanel
    Left = 8
    Top = 95
    Width = 273
    Height = 124
    TabOrder = 7
    object Label6: TLabel
      Left = 24
      Top = 31
      Width = 56
      Height = 13
      Caption = 'Slankmatis1'
    end
    object Label7: TLabel
      Left = 114
      Top = 31
      Width = 56
      Height = 13
      Caption = 'Slankmatis2'
    end
    object Label8: TLabel
      Left = 209
      Top = 31
      Width = 27
      Height = 13
      Caption = 'Sl'#279'gis'
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
    Top = 697
    Width = 408
    Height = 41
    TabOrder = 8
    object Button4: TButton
      Left = 193
      Top = 0
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
end
