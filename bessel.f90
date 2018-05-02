real(8) function bessel(n, x)
  implicit none
  integer(4) i, n, m
  real(8) sum, x
  real(8), external :: fact
  sum=0.0d0
  do m=0, 20
    sum=sum+(-1)**m*(x/2.0d0)**(2*m+n)/(fact(m)*fact(m+n))
  end do
  bessel=sum
end function bessel

