//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
//---------------------------------------------------------------------------
class TMeasuringTread : public TThread
{
private:
protected:
	void __fastcall Execute();
public:
	__fastcall TMeasuringTread(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
