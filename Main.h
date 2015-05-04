﻿//---------------------------------------------------------------------------

#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "Tserial.h"
#include "Tserial_event.h"
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Dialogs.hpp>
#include <Vcl.Imaging.GIFImg.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TMemo *Memo1;
    TButton *Button1;
	TLabel *Label1;
	TTimer *Timer_monitoring;
	TPanel *Panel1;
	TButton *Button2;
	TButton *Button3;
	TButton *Button_Stop;
	TEdit *Edit_RPM;
	TLabel *Label2;
	TLabel *Label3;
	TPanel *Panel2;
	TLabel *Label4;
	TPageControl *tab1;
	TTabSheet *KOMPRESINIS;
	TTabSheet *KIRPIMAS;
	TTabSheet *TREŠIO_SLĖGIO;
	TListView *ListView1;
	TTimer *Timer_sampling;
	TButton *Button_sampling_start;
	TButton *Button_sampling_stop;
	TSaveDialog *SaveDialog1;
	TPanel *Panel3;
	TComboBox *ComboBox_Comport;
	TButton *Button_Connect;
	TButton *Button5;
	TLabel *Label5;
	TImage *Image1;
	TMemo *Memo2;
	TPanel *Panel4;
	TButton *Button6;
	TButton *Button7;
	TComboBox *ComboBox_sampling;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label_slegis;
	TLabel *Label_pos2;
	TLabel *Label_pos1;
	TLabel *Label9;
	TLabel *Label10;
	TPanel *Panel5;
	TButton *Button4;
	TButton *Button8;
	TListView *ListView2;
	TListView *ListView3;
	TPanel *Panel6;
	TLabel *Label11;
	TLabel *Label12;
	TEdit *Edit_pertankslegis;
	TEdit *Edit_maxslegis;
	TPanel *Panel7;
	TEdit *Edit_poriniokoef;
	TEdit *Edit_mazinimopagaporin;
	TEdit *Edit_uzlaikymas;
	TLabel *Label13;
	TLabel *Label14;
	TLabel *Label15;
	TTimer *Timer_variklio;
	TEdit *Edit_pauze1;
	TLabel *Label16;
	TEdit *Edit_pauze2;
	TLabel *Label17;
	TEdit *Edit_gamtinis;
	TLabel *Label18;
	TEdit *Edit_pradinisRPM;
	TLabel *Label19;
	TEdit *Edit_backRPM;
	TLabel *Label20;
	TPanel *Panel8;
	TEdit *Edit_pvzplotas;
	TEdit *Edit_koefjegos;
	TLabel *Label21;
	TLabel *Label22;
	TLabel *Label23;
	TCheckBox *CheckBox_porinio;
	TTimer *Timer_porinioslegio;
	TTimer *Timer_uzlaikymo;
	TTimer *Timer_kompresinis;
	TTimer *Timer_delay;
	TPanel *Panel9;
	TEdit *Edit_RPMpradinis2;
	TEdit *Edit_maxposlinkis2;
	TLabel *Label24;
	TLabel *Label25;
	TTimer *Timer_sampling2;
	TPanel *Panel10;
	TLabel *Label26;
	TLabel *Label27;
	TEdit *Edit_RPMpradinis3;
	TEdit *Edit_maxposlinkis3;
	TTimer *Timer_sampling3;
	TTimer *Timer_poslinkio;
	void __fastcall Button_ConnectClick(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Timer_monitoringTimer(TObject *Sender);
	void __fastcall Button_StopClick(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Timer_samplingTimer(TObject *Sender);
	void __fastcall ComboBox_samplingChange(TObject *Sender);
	void __fastcall Button_sampling_startClick(TObject *Sender);
	void __fastcall Button_sampling_stopClick(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
	void __fastcall Button5Click(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall Button7Click(TObject *Sender);
	void __fastcall Timer_variklioTimer(TObject *Sender);
	void __fastcall Timer_porinioslegioTimer(TObject *Sender);
	void __fastcall Timer_uzlaikymoTimer(TObject *Sender);
	void __fastcall Timer_kompresinisTimer(TObject *Sender);
	void __fastcall Timer_delayTimer(TObject *Sender);
	void __fastcall Timer_sampling2Timer(TObject *Sender);
	void __fastcall Timer_sampling3Timer(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif



extern Tserial *com;
extern unsigned char monitoring_flag;
