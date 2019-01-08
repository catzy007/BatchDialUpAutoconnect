#include <iostream>
#include <stdio.h>
#include <ctype.h>
using namespace std;

main()
{
	string n;
	printf("\nType card you want to check\n");
	
	//declare some of this to make everything simple
	string OD=" of Diamonds";
	string OH=" of Hearts";
	string OS=" of Spades";
	string OC=" of Clubs";
	
	//splitting n into different characters and declare ijkl
	cin >> n;
	char i = n[0];
	char j = n[1];
	char k = n[2];
	int l = i+j;
	
	//int x = i;
	//int y = j;
	
	//to check if parameter is valid you can dicable it by comment
		//cout<<i<<" and "<<j<<" and "<<k<<x<<y<<endl;
	
	//special mod for 10 by changing ascii char to integer it's stupid but works
	//97 is substitution from ascii char 1 and 0 then converted to ascii decimal 49 and 48 
	if(l==97)
	{
		switch(k) //begin case with k and every case jump to end
		{
			case 'd':
				cout<<"10"<<OD;
				goto end;
			case 'h':
				cout<<"10"<<OH;
				goto end;
			case 's':
				cout<<"10"<<OS;
				goto end;
			case 'c':
				cout<<"10"<<OC;
				goto end;
			default:
				cout<<"No card match. Err : 1"; //print error if nothing match
				goto end;
		}
	}
	
	//standard algorithm begin
	
	//check if i is number or character
	if ((isdigit(i)) && (i != 48) && (i != 49)) //and return to error if i=1 and i=0. 48 and 49 is conversion from ascii char to integer
	{
		switch(j) //begin case using j
		{
			case 'd':
				cout<<i<<OD;
				break;
			case 'h':
				cout<<i<<OH;
				break;
			case 's':
				cout<<i<<OS;
				break;
			case 'c':
				cout<<i<<OC;
				break;
			default:
				cout<<"No card match. Err : 2"; //print error if nothing match
				break;
		}
	}
	else //if i is not number then
	{
		switch(i) //begin case using i
		{
			case 'a':
				switch(j) //begin case using j if i is a
				{
					case 'd':
						cout<<"Ace"<<OD;
						break;
					case 'h':
						cout<<"Ace"<<OH;
						break;
					case 's':
						cout<<"Ace"<<OS;
						break;
					case 'c':
						cout<<"Ace"<<OC;
						break;
					default:
						cout<<"No card match. Err : 3"; //print error if nothing match
						break;
				}
			break;
			
			case 'k':
				switch(j) //begin case using j if i is k
				{
					case 'd':
						cout<<"King"<<OD;
						break;
					case 'h':
						cout<<"King"<<OH;
						break;
					case 's':
						cout<<"King"<<OS;
						break;
					case 'c':
						cout<<"King"<<OC;
						break;
					default:
						cout<<"No card match. Err : 4"; //print error if nothing match
						break;
				}
			break;
			
			case 'q':
				switch(j) //begin case using j if i is q
				{
					case 'd':
						cout<<"Queen"<<OD;
						break;
					case 'h':
						cout<<"Queen"<<OH;
						break;
					case 's':
						cout<<"Queen"<<OS;
						break;
					case 'c':
						cout<<"Queen"<<OC;
						break;
					default:
						cout<<"No card match. Err : 5"; //print error if nothing match
						break;
				}
			break;
			
			case 'j':
				switch(j) //begin case using j if i is j
				{
					case 'd':
						cout<<"Jack"<<OD;
						break;
					case 'h':
						cout<<"Jack"<<OH;
						break;
					case 's':
						cout<<"Jack"<<OS;
						break;
					case 'c':
						cout<<"Jack"<<OC;
						break;
					default:
						cout<<"No card match. Err : 6"; //print error if nothing match
						break;
				}
			break;
			
			default: //print error if nothing match
				printf("No card match. Err : 7");
		}
	}
end:; //skip line
}
