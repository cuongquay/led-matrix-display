#include "define.h"

#define DWORD long int

const DWORD TK21[] ={
	0x46c960, 0x2ed954, 0x54d4a0, 0x3eda50, 0x2a7552, 0x4e56a0, 0x38a7a7, 0x5ea5d0, 0x4a92b0, 0x32aab5,
	0x58a950, 0x42b4a0, 0x2cbaa4, 0x50ad50, 0x3c55d9, 0x624ba0, 0x4ca5b0, 0x375176, 0x5c5270, 0x466930,
	0x307934, 0x546aa0, 0x3ead50, 0x2a5b52, 0x504b60, 0x38a6e6, 0x5ea4e0, 0x48d260, 0x32ea65, 0x56d520,
	0x40daa0, 0x2d56a3, 0x5256d0, 0x3c4afb, 0x6249d0, 0x4ca4d0, 0x37d0b6, 0x5ab250, 0x44b520, 0x2edd25,
	0x54b5a0, 0x3e55d0, 0x2a55b2, 0x5049b0, 0x3aa577, 0x5ea4b0, 0x48aa50, 0x33b255, 0x586d20, 0x40ad60,
	0x2d4b63, 0x525370, 0x3e49e8, 0x60c970, 0x4c54b0, 0x3768a6, 0x5ada50, 0x445aa0, 0x2fa6a4, 0x54aad0,
	0x4052e0, 0x28d2e3, 0x4ec950, 0x38d557, 0x5ed4a0, 0x46d950, 0x325d55, 0x5856a0, 0x42a6d0, 0x2c55d4,
	0x5252b0, 0x3ca9b8, 0x62a930, 0x4ab490, 0x34b6a6, 0x5aad50, 0x4655a0, 0x2eab64, 0x54a570, 0x4052b0,
	0x2ab173, 0x4e6930, 0x386b37, 0x5e6aa0, 0x48ad50, 0x332ad5, 0x582b60, 0x42a570, 0x2e52e4, 0x50d160,
	0x3ae958, 0x60d520, 0x4ada90, 0x355aa6, 0x5a56d0, 0x462ae0, 0x30a9d4, 0x54a2d0, 0x3ed150, 0x28e952
}; /* Years 2000-2099 */

//char CAN[10][10] = {"Giap", "At", "Binh", "Dinh", "Mau", "Ky", "Canh", "Tan", "Nham", "Quy"};
//char CHI[12][10] = {"Ty'", "Suu", "Dan", "Mao", "Thin", "Ty.", "Ngo", "Mui", "Than", "Dau", "Tuat", "Hoi"};
//char TUAN[7][10] = {"Chu Nhat", "Thu Hai", "Thu Ba", "Thu Tu", "Thu Nam", "Thu Sau", "Thu Bay"};

typedef struct _LunarDate{
    BYTE day;
    BYTE month;
    WORD year;
    BYTE leap;
    DWORD jd; 
} LUNAR_DATE;
              
LUNAR_DATE ld;
LUNAR_DATE ly[14];

DWORD jdn(int dd, int mm, int yy) {
	int a=0, y=0, m=0;
	a = ((14 - mm) / 12);
	y = yy+4800-a;
	m = mm+12*a-3;	
	return (DWORD)((153*m+2)/5  + 365*y - (y/100) - 32045 + dd + (y/4)  + (y/400));
}

void decodeLunarYear(int yy, DWORD k) {	
	int regularMonths[12];
	int monthLengths[2]={29,30};
	DWORD offsetOfTet=0,currentJD=0,solarNY=0;
	int leapMonth=0,leapMonthLength=0;
	int i=0, j=0,mm=0;
	offsetOfTet = k >> 17;
	leapMonth = k & 0xf;
	leapMonthLength = monthLengths[k >> 16 & 0x1];
	solarNY = jdn(1, 1, yy);
	currentJD = (DWORD)(solarNY+offsetOfTet);
	j = k >> 4;
	for(i = 0; i < 12; i++) {
		regularMonths[12 - i - 1] = monthLengths[j & 0x1];
		j >>= 1;
	}
	if (leapMonth == 0) {
		for(mm = 1; mm <= 12; mm++) {
			ly[mm].day = 1;
			ly[mm].month = mm;
			ly[mm].year = yy;
			ly[mm].leap = 0;
			ly[mm].jd = currentJD;
			currentJD += regularMonths[mm-1];
		}
	} else {
		for(mm = 1; mm <= leapMonth; mm++) {
			ly[mm].day = 1;
			ly[mm].month = mm;
			ly[mm].year = yy;
			ly[mm].leap = 0;
			ly[mm].jd = currentJD;
			currentJD += regularMonths[mm-1];
		}		
		ly[mm].day = 1;
			ly[mm].month = leapMonth;
			ly[mm].year = yy;
			ly[mm].leap = 0;
			ly[mm].jd = currentJD;
		currentJD += leapMonthLength;
		for(mm = leapMonth+2; mm <= 13; mm++) {
			ly[mm].day = 1;
			ly[mm].month = mm-1;
			ly[mm].year = yy;
			ly[mm].leap = 0;
			ly[mm].jd = currentJD;
			currentJD += regularMonths[mm-2];
		}
	}	
}

void getYearInfo(int yyyy) {
	DWORD yearCode = 0;
	yearCode = TK21[yyyy - 2000];
	decodeLunarYear(yyyy, yearCode);
}

void getLunarDate(int dd, int mm, int yyyy) {
	int i =13;
	DWORD jd =0;	
	getYearInfo(yyyy);
	jd = jdn(dd, mm, yyyy);
	if (jd < ly[1].jd) {
		getYearInfo(yyyy - 1);
	}	
	if (ly[13].jd==0) i=12;
	while (jd < ly[i].jd) {
		i--;
	}	
	ld.day = ly[i].day + jd - ly[i].jd;	
	ld.month = ly[i].month;
	ld.year = ly[i].year;
	ld.leap = ly[i].leap;
	ld.jd = jd;
}

void getLunarStr(char* sz, short h, short m, short dd, short mm, int yyyy){	
	getLunarDate(dd, mm, yyyy);	
	
	sprintf(sz,"B�y gi� l� %02d:%02d ng�y %d/%d/%d (%d/%d �m l�ch)",	            
                h,m,dd,mm,yyyy,
                ld.day,ld.month);
             
/*	sprintf(sz,"%s %s,%s,%s",
	    TUAN[(ld[4] + 1)%7],
	    CAN[(ld[4] + 9)%10],CHI[(ld[4]+1)%12],
	    CAN[(ld[2]*12+ld[1]+3)%10],CHI[(ld[1]+1)%12],
	    CAN[(ld[2]+6)%10],CHI[(ld[2]+8)%12]);
*/	    
}