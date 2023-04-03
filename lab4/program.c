#include <stdio.h>

// question 1

void fun() {
  int a = 15, b = 20, c = 25;
  for (int i = 0; i < 1; i++) {
    int b = 30, c = 35, d = 40;
    printf("1: a=%d b=%d c=%d d=%d\n", a, b, c, d);
    for (int j = 0; j < 1; j++) {
      int c = 45, d = 50, e = 55;
      printf("2: a=%d b=%d c=%d d=%d e=%d\n", a, b, c, d, e);
    }
    printf("3: a=%d b=%d c=%d d=%d\n", a, b, c, d);
  }
  printf("4: a=%d b=%d c=%d\n", a, b, c);
}

// this C code outputs the following

/*
1: a=15 b=30 c=35 d=40
2: a=15 b=30 c=45 d=50 e=55
3: a=15 b=30 c=35 d=40
4: a=15 b=20 c=25
*/

// question 2

void fun1() {
  int b, c, d;
  // these values are undefined and depend on what is in memory
  // the b and c defined in main cannot be accessed inside the function
  printf("b=%d c=%d d=%d\n", b, c, d);
  b = 4;
  c = 5;
  d = 6;
  printf("b=%d c=%d d=%d\n", b, c, d);
}

void fun2() {
  int c = 1, d = 6, e = 9;
  printf("c=%d d=%d e=%d\n", c, d, e);
}

void fun3() {
  int d = 14, e = 15, f = 16;
  printf("d=%d e=%d f=%d\n", d, e, f);
}

int main() {
  // for question one, if this function is commented out the first three-
  //values printed by fun1 change
  fun();
  // question 2
  int a = 1, b = 2, c = 3;
  printf("a=%d b=%d c=%d\n", a, b, c);
  fun1();
  fun2();
  fun3();
  // the initial three values are not changed by what happens in a different scope inside the functions
  printf("a=%d b=%d c=%d\n", a, b, c);
  return 0;
}

// this c code outputs the following

/*
a=1 b=2 c=3
b=1 c=1 d=15 // these values are random because they aren't defined, if the code is changed they change
b=4 c=5 d=6
c=1 d=6 e=9
d=14 e=15 f=16
a=1 b=2 c=3
*/
