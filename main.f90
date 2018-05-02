program main
  implicit none
  integer(4) i, j, k, m, n
  real(8), external :: bessel
  real(8) r, lambda(3,3), theta
  real(8) A0, B0, C0, D0
  real(8) c, t 
  real(8), external :: u

  open(1,file="root.data", action='read', status='old')
  
  do i = 1, 360
