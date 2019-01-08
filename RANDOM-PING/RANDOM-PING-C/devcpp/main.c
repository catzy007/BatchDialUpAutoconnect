#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#include "rlutil.h"

int main(int argc, char *argv[])
{
    int count=100; //percentage counter
    int count1; //percentage counter
    char counts[3]; //percentage counter as string
    char count1s[3]; //percentage counter as string
    int rand1; //ip or url selection
    int rand2; //packetsize
    char rand2s[2]; //packetsize as string
    int rand3; //wait time
    char *link; //where to ping
    char *command; //command for ping
    char *command2; //command for title

    system("title RANDOM-PING: Sent=100% Loss=0%");
    setColor(11);

    while(1){

        ///setting up some memmory
        link=malloc(sizeof(char)*255);
        command=malloc(sizeof(char)*255);
        command2=malloc(sizeof(char)*255);

        ///random generator begin
        do{
            rand1=rand()%10;
        }while(rand1==0);
        do{
            rand2=(rand()%10)+29;
            sprintf(rand2s, "%d", rand2);
        }while(rand2==0);
        do{
            rand3=(rand()%10)*1000;
        }while(rand3==0||rand3==1000);

        //printf("aa\n"); //debug line can be deleted
        ///switch case 1 begin
        switch(rand1){
            case 1:
                strcpy(link,"8.8.8.8");
                break;
            case 2:
                strcpy(link,"www.wikipedia.org");
                break;
            case 3:
                strcpy(link,"www.facebook.com");
                break;
            case 4:
                strcpy(link,"www.youtube.com");
                break;
            case 5:
                strcpy(link,"www.yahoo.com");
                break;
            case 6:
                strcpy(link,"www.blogspot.com");
                break;
            case 7:
                strcpy(link,"www.twitter.com");
                break;
            case 8:
                strcpy(link,"www.apple.com");
                break;
            case 9:
                strcpy(link,"www.microsoft.com");
                break;
            default:
                strcpy(link,"www.google.com");
                break;
        }
        //printf("%d %d %d %s\n",rand1,rand2,rand3,link); //debug line can be deleted
        ///command=ping -n 1 -l rand2s link
        strcpy(command,"ping -n 1 -l ");
        strcat(command, rand2s);
        strcat(command, " ");
        strcat(command, link);
        strcat(command, ">ping.inf");
        system(command);

        ///read and process file ping.inf
        FILE *fp=fopen("ping.inf","r");
        char tmp[256]={0x0};
        while(fp!=NULL && fgets(tmp,sizeof(tmp),fp)!=NULL);
            //puts(tmp); //debug line can be deleted
            if(strstr(tmp, "ms")){
                printf("Ping transmit succeeded, received %d bytes from %s\n",rand2,link);
                if(count<100){
                    count++;
                }else{
                    count=100;
                }
            }else{
                if(count>0){
                    count--;
                }else{
                    count=0;
                }
                printf("Ping transmit failed, Please check your connection\n");
            }
        fclose(fp);
        count1=100-count;
        sprintf(counts, "%d", count);
        sprintf(count1s, "%d", count1);

        //printf("%d",count); //debug line can be deleted
        ///output begin
        strcpy(command2,"title RANDOM-PING: Sent=");
        strcat(command2, counts);
        strcat(command2, "% Loss=");
        strcat(command2, count1s);
        strcat(command2, "%");
        system(command2);
        printf("Waiting for %d seconds before next ping\n",rand3/1000);

        ///freeing up some memmory
        free(link);
        free(command);
        free(command2);
        Sleep(rand3);
    }
    return 0;
}
