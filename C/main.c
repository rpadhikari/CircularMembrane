#include<stdio.h>
#include<math.h>
#include<stdlib.h>
FILE *out1;
double umn(int, int, double, double, double);

int main() {
  int i, j, m=1, n=2;
  int r_max=10, th_max=360;
  double r, th, t;
  out1=fopen("out.dat", "w");
  for(i=0; i<=r_max; i++) {
    r=(double)i*0.1;
    for(j=0; j<=th_max; j++) {
      th=(double) j*1.0;
      fprintf(out1,"%lf %lf %lf\n", r, th, umn(m, n, r, th, 1.0));
    }
  }
  fclose(out1);

}
