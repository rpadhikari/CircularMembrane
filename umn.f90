real(8) function umn(m, n, r, theta, t)
  implicit none
  integer(4) m, n
  real(8) r, theta, t
  real(8) A0, B0, C0, D0
  real(8) c, nrr, rho, height
  real(8) amn(4, 4), lambda(4, 4)
  real(8), external :: bessel
  
  open(1, file='in.data', sction='read', status='old')
  open(2, file='root.data', sction='read', status='old')
  read(1,*) nrr
  read(1,*) rho
  read(1,*) height
  read(1,*) A0, B0, C0, D0
  read(1,*) radius
  close(1)
  c=dsqrt(nrr/(rho*height))
  do i=1, 4
    read(2,*) (amn(i, j), j=1,4)
  end do
  lambda=amn/radius
  
  umn=(A0*cos(c*lamda(m,n)*t)+B0*sin(c*lambda(m,n)*t)*bessel(m,lambda(m,n)*r)*&
      (C0*cos(m*theta)+D0*sin(m*theta))

end function umn
 
