double fact(int);
double pow(double, double);
double bessel(int n, double x) {
  int i;
  double sum;
  sum=0.0;
  for(i=0; i<=15; i++) {
    sum+= pow(-1.0, (double)(i+n))*pow(x/2.0, (double)n+2.0*i)/
          (fact(i)*fact(i+n));
  }
  return sum;
}
