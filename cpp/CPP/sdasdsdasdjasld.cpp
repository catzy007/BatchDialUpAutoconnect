    #include <iostream>
    using namespace std;
     
    int main() 
	{
    //compiled with MinGW GCC 6.3.0
    	
    	string Simbol, Nilai, Jenis;
    	cout<<"Enter the card notation: ";
    	cin>>Simbol;
     	
     	
     	//exception for 10 and 1
     	if((Simbol[0]=='1') && (Simbol[1]=='0'))
     	{
     		Nilai="10";
     		Simbol[1]=Simbol[2];
     		goto algo1;
		}
		else if((Simbol[0]=='0') || (Simbol[0]=='1') && (Simbol[1]!='0')) goto err; 
		else goto algo0;
     	
     	algo0:
    	if(Simbol[0]=='A')
    		Nilai="Ace";
    	else if(Simbol[0]=='J')
    		Nilai="Jack";
    	else if(Simbol[0]=='Q')
    		Nilai="Queen";
    	else if(Simbol[0]=='K')
    		Nilai="King";
    	else Nilai=Simbol[0];
    	
    	algo1:
    	if(Simbol[1]=='D')
    		Jenis="Diamonds";
    	else if(Simbol[1]=='H')
    		Jenis="Hearts";
    	else if(Simbol[1]=='S')
    		Jenis="Spades";
    	else if(Simbol[1]=='C') 
			Jenis="Clubs";
		else goto err;
     
    	cout<<Nilai<<" of "<<Jenis<<"\n";
    	return 0;
    	err:
    	printf("Card Not Found!\n");
    	return 0;
    }
