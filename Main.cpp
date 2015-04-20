//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "Main.h"
#include "Unit2.h"
#include "Tserial.h"
#include "Tserial_event.h"
#include "GifImg.hpp"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm *MainForm;

Tserial *com;
char sel_port[20];

unsigned char data_send[40], data[30];
unsigned int kiek, RPM;
long samp_interval=60000, laikas=1;

FILE *f;
AnsiString Failas;
float poslinkis, jega;// slegis;
	TGIFImage *Gif = new TGIFImage;
	//TImage *Image1 = new TImage(MainForm);
	//Image1->Parent = MainForm;


float pos1, pos2, slegis;
char flag_mask=0, flag_C1;

unsigned int CRC16(unsigned char x, unsigned int Crc);
unsigned char send_receive_cmd(char *cmd, unsigned short sizesend, unsigned short sizeget, char *answer);


//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
	: TForm(Owner)
{
	int indic=5;
	unsigned long stat=5;

	com = new Tserial();

		char portas[20];
		char portonr[3];

	for(int p=1;p<99;p++){
		strcpy(portas,"\\\\.\\COM");
		itoa(p,portonr,10);
		strcat(portas, portonr);
		if (com!=0) {
			indic = com->connect(portas, 115200, spNONE);
			GetCommModemStatus(com,&stat);
			if(!indic) {
				ComboBox_Comport->Items->Add(portas+4);
			}
		}
	}


	ComboBox_sampling->Items->Add("30 s");
	ComboBox_sampling->Items->Add("1 min");
	ComboBox_sampling->Items->Add("10 min");
	ComboBox_sampling->Items->Add("30 min");
	ComboBox_sampling->ItemIndex=1;
	Timer_sampling->Interval=samp_interval;


	Gif->LoadFromFile("apskritimas.gif");
	Gif->Animate=true;
    Image1->Picture->Assign(Gif);

}
//---------------------------------------------------------------------------
void __fastcall TMainForm::Button_ConnectClick(TObject *Sender)
{
	char portonr[10] = {0};
	wchar_t * sel;
	strcpy(sel_port,"\\\\.\\");
	sel=ComboBox_Comport->Items->Strings[ComboBox_Comport->ItemIndex].c_str();
	wcstombs(portonr, sel, wcslen(sel));
	strcat(sel_port, portonr);
	int ind=com->connect(sel_port, 115200, spNONE);  //sel_port=ComboBox_Comport->Items-get();
	if(ind==0) {
		Label5->Caption="CONNECTED";
		Label5->Left = Label5->Left+15;
		Label5->Font->Color=clGreen;
		Timer_monitoring->Enabled=true;
	}
	else{
		Label5->Caption="NOT CONNECTED";
		Label5->Left = Label5->Left-15;
		Label5->Font->Color=clRed;
    }
}
//---------------------------------------------------------------------------
unsigned char send_receive_cmd(char *cmd, unsigned short sizesend, unsigned short sizeget, char *answer) {
	unsigned char temp, data_send[10];
	unsigned int crc0;
	int counter=0, ii=0;
	char buffer [64];

	memcpy(buffer,cmd,64);

	while(com->getNbrOfBytes() > 0)
		com->getChar();

	crc0=0xFFFF;
	for(int k=1;k<sizesend;k++)
		crc0=CRC16(buffer[k], crc0);
	buffer[sizesend]=crc0;
	buffer[sizesend+1]=crc0>>8;
	buffer[sizesend+2]=0xC1;
	com->sendArray(buffer,sizesend+3);
	flag_C1=0;
	flag_mask=0;
	kiek=0;
	while(flag_C1!=1 && kiek++<200000){
		if(com->getNbrOfBytes()){
			temp = com->getChar();
			MainForm->Memo2->Lines->Add(temp);
			if(temp==0xFE && flag_mask==0)
				flag_mask=1;
			else {
				answer[ii++]=temp;
				if(temp==0xC1 && flag_mask==0 && flag_C1==0) {
					flag_C1=1;
					flag_mask=0;
				}
				flag_mask=0;
			}
		}
	}
	if(kiek<200000){
		MainForm->Memo1->Lines->Add("OK");
		return 1;
	}
	else {
		MainForm->Memo1->Lines->Add("BLOGAI");
		return 0;
    }
}
//---------------------------------------------------------------------------

unsigned int CRC16(unsigned char x, unsigned int Crc)
{
  int g=0x1021;
  unsigned char i;

  for(i=0;i<8;i++)
  {
	if(!(Crc&0x8000))  {
      if(!(x&0x80))
        Crc<<=1;
      else Crc=(Crc<<1)^1;
    }
    else  {
	  if(!(x&0x80))Crc=(Crc<<1)^g;
	   else Crc=(Crc<<1)^g^1;
    }
    x<<=1;
  }
  return(Crc);
}
void __fastcall TMainForm::Button1Click(TObject *Sender)
{
	char str[10];
	data_send[0]=0xC0;
	data_send[1]=0x33;
	data_send[2]=0x02;

	Memo1->Clear();
	Memo2->Clear();

	if(send_receive_cmd(data_send,3,8, data)){
		pos1 = (float)((signed short)(data[3]|data[4]<<8))/100;
		sprintf(str,"%3.2f",pos1);
		Label_pos1->Caption=str;
		flag_C1=0;
	}
	else
	   Label_pos1->Caption="--";

	data_send[1]=0x34;

	if(send_receive_cmd(data_send,3,8, data)){
		pos2 = (float)((signed short)(data[3]|data[4]<<8))/100;
		sprintf(str,"%3.2f",pos2);
		Label_pos2->Caption=str;
		flag_C1=0;
	}
	else
	   Label_pos2->Caption="--";

	data_send[1]=0x66;
	if(send_receive_cmd(data_send,3,8, data)){
		slegis = (float)((signed short)(data[3]|data[4]<<8))/100;
		sprintf(str,"%3.2f",slegis);
		Label_slegis->Caption=str;
		flag_C1=0;
	}
	else {
	   ;//Label_slegis->Caption="--";
	}
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::Timer_monitoringTimer(TObject *Sender)
{
//Button1->Click();
	TMeasuringTread *matavimothread = new TMeasuringTread (false);
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::Button_StopClick(TObject *Sender)
{
	data_send[0]=0xC0;
	data_send[1]=0x01; //reiks pakeisti i adresa
	data_send[2]=0x04; // nuskaityti ID

	send_receive_cmd(data_send,3,6, data);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button3Click(TObject *Sender)
{

	RPM=100*StrToFloat(Edit_RPM->Text.Trim());


	data_send[0]=0xC0;
	data_send[1]=0x01; //adresas
	data_send[2]=0x02; // paleidimo komanda
	data_send[3]=RPM;
	data_send[4]=RPM>>8;     //1-290
	data_send[5]=0x01;  //0 CCW  1 CW


	send_receive_cmd(data_send,6,6, data);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button2Click(TObject *Sender)
{
	//RPM=100*StrToInt(Edit_RPM->Text.Trim());
	RPM = 100*StrToFloat(Edit_RPM->Text.Trim());
	data_send[0]=0xC0;
	data_send[1]=0x01; //adresas
	data_send[2]=0x02; // paleidimo komanda
	data_send[3]=RPM;
	data_send[4]=RPM>>8;     //1-290
	data_send[5]=0x00;  //0 CCW  1 CW
	send_receive_cmd(data_send,6,6, data);
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::Timer_samplingTimer(TObject *Sender)
{
	Timer_monitoring->Enabled=false;
	char str[6];
	Word Year, Month, Day, Hour, Min, Sec, MSec;
	TDateTime dtPresent = Now();
	DecodeDate(dtPresent, Year, Month, Day);
	DecodeTime(dtPresent, Hour, Min, Sec, MSec);

	TListItem  *ListItem = ListView1->Items->Item[ListView1->Items->Count-1];
	f = fopen(Failas.c_str(), "a+");
	Button1->Click();
	ListItem=this->ListView1->Items->Add();
	ListItem->Caption = dtPresent;//(float)laikas/1000;
	ListItem->SubItems->Add(laikas);

	sprintf(str,"%2.2f",pos1);
	ListItem->SubItems->Add(str);
	sprintf(str,"%2.2f",pos2);
	ListItem->SubItems->Add(str);
	sprintf(str,"%2.2f",slegis);
	ListItem->SubItems->Add(str);

	int s = ListItem->Top - ListView1->TopItem->Top;
	ListView1->Scroll(NULL, s);

	//poslinkis=1.1;
	//jega=2.2;
	//slegis=3.3;
	//Memo1->Lines->Add(dtPresent.TimeString());
	fprintf(f,"%d-%d-%d %d:%d:%d, %d, %3.2f, %3.2f, %3.2f\n",Year, Month, Day, Hour, Min, Sec, laikas,(float)pos1,(float)pos2,(float)slegis);
	fclose(f);
	laikas++; // virtualus laikas delta T
	Timer_sampling->Interval=samp_interval;
	Timer_monitoring->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::ComboBox_samplingChange(TObject *Sender)
{
if(ComboBox_sampling->ItemIndex==0)
	samp_interval=500;
if(ComboBox_sampling->ItemIndex==1)
	samp_interval=60000;
if(ComboBox_sampling->ItemIndex==2)
	samp_interval=600000;
if(ComboBox_sampling->ItemIndex==3)
	samp_interval=1800000;

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button_sampling_startClick(TObject *Sender)
{
	Failas=ExtractFilePath(ParamStr(0))+"crez.txt";
	f = fopen(Failas.c_str(), "w");
	fclose(f);
	Button_sampling_start->Enabled=false;
	Button_sampling_stop->Enabled=true;
	Timer_sampling->Interval=1;
	Timer_sampling->Enabled=true;

	Image1->Visible=true;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button_sampling_stopClick(TObject *Sender)
{
	Timer_sampling->Enabled=false;
	Button_sampling_stop->Enabled=false;
	Button_sampling_start->Enabled=true;
	Image1->Visible=false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button4Click(TObject *Sender)
{
	UnicodeString fail;   //	FILE *FSave;
	if (SaveDialog1->Execute())
	{
		fail=ExtractFilePath(ParamStr(0))+"crez.txt";
		CopyFileW(fail.w_str(), SaveDialog1->FileName.w_str(), FALSE);
	}
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button5Click(TObject *Sender)
{
	int indic=5;
	unsigned long stat=5;

	com = new Tserial();

	char portas[20]={0};
	char portonr[3]={0};
	ComboBox_Comport->Clear();
	ComboBox_Comport->Text="Select port";
	for(int p=1;p<99;p++){
		strcpy(portas,"\\\\.\\COM");
		itoa(p,portonr,10);
		strcat(portas, portonr);
		if (com!=0) {
			indic = com->connect(portas, 19200, spNONE);
			GetCommModemStatus(com,&stat);
			if(!indic) {
				ComboBox_Comport->Items->Add(portas+4);
			}
		}
	}
}
//---------------------------------------------------------------------------



void __fastcall TMainForm::Button6Click(TObject *Sender)
{
	data_send[0]=0xC0;
	data_send[1]=0x33;
	data_send[2]=0x03;

	send_receive_cmd(data_send,3,8, data);
	pos1 = (float)((signed short)(data[3]|data[4]<<8))/100;
	Label1->Caption=pos1;
	Memo2->Lines->Add(pos1);
	flag_C1=0;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::Button7Click(TObject *Sender)
{
	data_send[0]=0xC0;
	data_send[1]=0x34;
	data_send[2]=0x03;

	send_receive_cmd(data_send,3,8, data);
	pos1 = (float)((signed short)(data[3]|data[4]<<8))/100;
	Label1->Caption=pos1;
	Memo2->Lines->Add(pos1);
	flag_C1=0;
}
//---------------------------------------------------------------------------

