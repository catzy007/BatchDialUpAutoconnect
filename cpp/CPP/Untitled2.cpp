#include <iostream>
#include <conio.h>
#include <stdio.h>
using namespace std;

main()
{
	int i=0;
	int j=0;
	int x;
	int n;
	for (int n=1; n<=20000; n++)
	{
		if (n==1)
			{
				goto akhir2;
			}
		for (x = 2; x <= n / 2; ++x)
		{
			if (n % x == 0)
			{
				cout<<n<<" Bukan Bilangan Prima"<<endl;
				cout<<" "<<n<<" Karena dapat dibagi oleh bilangan "<<x<<" dan "<<n/x<<endl<<endl;
				goto akhir2;
			}
			goto akhir1;
		}
		akhir1:
		cout<<n<<" Bilangan Prima"<<endl;
		cout<<" "<<n<<" Karena dapat dibagi oleh bilangan "<<x<<" dan "<<n/x<<endl<<endl;
		j=j+1;
		i=i+n;
		cout<<n<<endl;
		akhir2:;
	}
	cout<<endl;
	cout<<"Total bilangan prima yang ditemukan adalah "<<j<<endl;
	cout<<"Hasil penjumlahan seluruh bilangan prima yang ditemukan adalah "<<i<<endl;
}

