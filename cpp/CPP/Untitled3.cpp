#include <iostream>
#include <conio.h>
#include <stdio.h>
using namespace std;

main()
{
	int i=0;
	int j=0;
	int x=2;
	int n;
	for (int n=1; n < 10001; n++)
	{
		if (n==1)
			goto akhir2;
		else if (n==2)
			goto akhir1;
		for (x = 2; x <= n; ++x)
		{
			if (n % x == 0)
			{
				cout<<n<<" Bukan Bilangan Prima"<<endl;
				cout<<" "<<n<<" Karena dapat dibagi oleh bilangan "<<x<<" dan "<<n/x<<endl<<endl;
				goto akhir2;
			}
			else if (n / x == 1)
			{
				goto akhir1;
			}
		}
		akhir1:;
		cout<<n<<" Bilangan Prima"<<endl;
		cout<<" "<<n<<" hanya dapat dibagi oleh 1 dan "<<n<<endl<<endl;
		j=j+1;
		i=i+n;
		akhir2:;
	}
	cout<<endl;
	cout<<"Total bilangan prima yang ditemukan adalah "<<j<<endl;
	cout<<"Hasil penjumlahan seluruh bilangan prima yang ditemukan adalah "<<i<<endl;
}
