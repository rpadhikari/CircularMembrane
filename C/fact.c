double fact(int n) {
  double x;
  int i;
  x = 1.0;
  for(i=1; i<=n; i++) {
    x = x * (double) i;
  }
  return x;
}

