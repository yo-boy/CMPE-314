#include <stdio.h>
// floating point representation error
int main()
{ float i, t=0.0, a=1.0, b=10.0, c;
    for (i=0; i<100; i++)
        t = t + 0.1;
    printf("\n adding 0.1, 100 times t=%10.5f",t);
    t=0.1;
    printf("\n just displaying 0.1 =%10.5f",t);
    printf("\n result of 1/10 =%10.5f",1/10);
    c=a/b;
    printf("\n c=%10.5f",c);
    system("pause"); }

    /*
     * the reason for the errors was that a float becomes less accurate when
     * you want to represent more decimal places, the more digits represented
     * the more inaccurate it becomes, so to fix this issue we can just change
     * the requested decimal places in the printf statement, we could also swi-
     * -tch to using a double instead of a float if we did need more decimal
     * places, as doubles can be more accurate for more decimal places when
     * compared to floats.
    */
