! This function calculates the displacement of vibration of circular
! membrane using Bessel's function.
! Author: Rajendra Adhikari
! Date: May 3rd, 2018

real(8) function Umn(m, n, r, theta, t)
  implicit none
  integer(4) i, j ! running index variable
  integer(4) m, n ! m is the order of Bessel function and n is of root
  real(8) r, theta, t ! Radius, angle and time variables
  real(8) A0, B0, C0, D0 ! normalizing coefficients
  real(8) c ! velocoty calculated as below formula
  real(8) nrr ! surface tension
  real(8) rho ! density of the material
  real(8) height ! thickness of the membrane
  real(8) amn(4, 4) ! roots of Bessel function, reading from file roots.data
  real(8) lambda(4, 4) ! root divided by radius of membrane
  real(8) radius ! radius of circular membrane 
  real(8), external :: bessel ! Bessel function defined earlier
  
  open(1, file='in.data', action='read', status='old') ! membrane parameters
  open(2, file='root.data', action='read', status='old') ! roots file
  read(1,*) nrr 
  read(1,*) rho
  read(1,*) height
  read(1,*) A0, B0, C0, D0
  read(1,*) radius
  close(1)
  ! calculation of transverse speed of wave in membrane
  c=dsqrt(nrr/(rho*height)) ! velocity
  do i=1, 4
    read(2,*) (amn(i, j), j=1,4) ! roots from file roots.data 4x4 only
  end do
  lambda=amn/radius
  
  ! displacement U_{mn}
  Umn=(A0*cos(c*lambda(m,n)*t))+B0*sin(c*lambda(m,n)*t)*bessel(m,lambda(m,n)*r)*&
      (C0*cos(m*theta)+D0*sin(m*theta))

end function Umn ! end of function Umn
 
