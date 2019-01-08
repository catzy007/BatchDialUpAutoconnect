#include <iostream>
#include <conio.h>
#include <stdio.h>
using namespace std;

main()
{
	unsigned long int i=0;
	unsigned long int j=0;
	unsigned long int x;
	char n [100];
	for (long n=999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999 [100]; n<9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999; n++)
	{
		if (n==1)
				goto akhir;
		for (x = 2; x <= n / 2; ++x)
		{
			if (n % x == 0)
			{
				cout<<n<<" Bukan Bilangan Prima"<<endl;
				cout<<" "<<n<<" Karena dapat dibagi oleh bilangan "<<x<<" dan "<<n/x<<endl<<endl;
				goto akhir;
			}
		}
		cout<<n<<" Bilangan Prima"<<endl;
		cout<<" "<<n<<" hanya dapat dibagi oleh 1 dan "<<n<<endl<<endl;
		j=j+1;
		i=i+n;
		akhir:;
	}
	cout<<endl;
	cout<<"Total bilangan prima yang ditemukan adalah "<<j<<endl;
	cout<<"Hasil penjumlahan seluruh bilangan prima yang ditemukan adalah "<<i<<endl;
}
