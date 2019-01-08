#include <conio.h>
#include <stdio.h>
#include <iostream>
using namespace std;
void rumuspanjang(int digit[], int b)
{
	for (int j=0; j<b; j++)
	{
		for (int k=0; k<b; k++)
		{
			if (digit[j]>digit[k])
			{
				int isi;
				isi=digit[k];
				digit[k]=digit[j];
				digit[j]=isi;
				cout<<digit[k]<<digit[j]<<endl;
			}
		}
	}
}
void lebar()
{
	int a=1 ;a+=1; 
	int b=3 ;b*=3; 
	int c=7 ;c%=10;
	cout<<a<<b<<","<<c;
}
int main()
{
	cout<<"nilai panjang:";
	int digit[2];
	int jumlahdigit=2;
	int nilaiawal=0;
	for (int i=0; i<2; i++)
	{
		nilaiawal+=2;
		digit[i]=nilaiawal;
	}
	rumuspanjang(digit,jumlahdigit);
	cout<<"nilai lebar: "; lebar();
getch();
return 0;
}
