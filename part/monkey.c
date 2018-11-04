#include<stdio.h>
#include<stdlib.h>
int main()
{
    int i,j;
    j=1;
    for(i=1;i<10;i++)
    {
        j=2*(j+1);
    }
    printf("桃子的个数为%d\n",j);
    return 0;
}
