#include<stdio.h>

//returns index of reqd value
int BinarySearch(int arr[],int l,int r, int x)
{
    if(l<=r)
    {
        int m=(l+r)/2;
        if(arr[m]==x) {return m;}
        else if(x>arr[m]) { return BinarySearch(arr,m+1,r,x); }
        else { return BinarySearch(arr,l,m-1,x); }
    }
    return -1;
}

int main()
{
    int myarray[]= {36,45,7,8,3,4,1,2};
    int index= BinarySearch(myarray,3,6,4); 
    printf("index of reqd term= %d\n",index);
}