#include<stdio.h>

int main()
{
    int i;
    for(i=0;i<50;i++)
        printf("perl -pi -e 's/(?<=\\t.{%d}[a-z0-9])\\./\\\\\\./' adhosts\n",i);
}
