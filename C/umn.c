double sin(double);
double cos(double);
double bessel(int, double);
double umn(int m, int n, double r, double th, double t) {
  double lmn[3][3];
  lmn[0][0]=2.40482555769577;
  lmn[0][1]=5.52007811028631;
  lmn[0][2]=8.65372791291101;
  lmn[1][0]=3.83170597020751;
  lmn[1][1]=7.01558666981561;
  lmn[1][2]=10.1734681350627;
  lmn[2][0]=5.13562230184068;
  lmn[2][1]=8.41724414039986;
  lmn[2][2]=11.6198411721490;
  return (cos(lmn[m][n]*t)+sin(lmn[m][n]*t))*bessel(m, lmn[m][n]*r)*
         (cos(m*th)+sin(m*th));
}

