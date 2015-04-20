//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit2.h"
#include "Main.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TMeasuringTread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

__fastcall TMeasuringTread::TMeasuringTread(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall TMeasuringTread::Execute()
{
	FreeOnTerminate = true;
	MainForm->Button1->Click();
//	char str[10];
//   //	char data_send[5];
//	unsigned char data_send[10], data[30];
//
//	data_send[0]=0xC0;
//	data_send[1]=0x33;
//	data_send[2]=0x02;
//
//	MainForm->Memo1->Clear();
//	MainForm->Memo2->Clear();
//
////	if(send_receive_cmd(data_send,3,8, data)){
////		pos1 = (float)((signed short)(data[3]|data[4]<<8))/100;
////		sprintf(str,"%3.2f",pos1);
////		MainForm->Label_pos1->Caption=str;
////		flag_C1=0;
////	}
////	else
////	   MainForm->Label_pos1->Caption="--";
//
//	data_send[1]=0x34;
//
//	if(send_receive_cmd(data_send,3,8, data)){
//		pos2 = (float)((signed short)(data[3]|data[4]<<8))/100;
//		sprintf(str,"%3.2f",pos2);
//		MainForm->Label_pos2->Caption=str;
//		flag_C1=0;
//	}
//	else
//	   MainForm->Label_pos2->Caption="--";
//
//	data_send[1]=0x66;
//	if(send_receive_cmd(data_send,3,8, data)){
//		slegis = (float)((signed short)(data[3]|data[4]<<8))/100;
//		sprintf(str,"%3.2f",slegis);
//		MainForm->Label_slegis->Caption=str;
//		flag_C1=0;
//	}
//	else {
//	   ;//Label_slegis->Caption="--";
//	}
}
//---------------------------------------------------------------------------
