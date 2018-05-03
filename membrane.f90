program membrane
  implicit none
  integer(4) i, j, k
  real(8) r, theta, t
  real(8), external :: Umn
  real(8), parameter :: pi=3.1415926535897930d0
  open(4, file='out.data', action='write')
  do i=1, 100
    r=dbla(i)*0.10d0
    do j=0, 628
      theta=dble(j)*pi/180.0d0
      do k=1, 100
        t=dble(k)*0.01
        write(4,12) r, theta, t, Umn(1,0, r, theta, t)
      end do
    end do
  end do
  12 format(f5.3, f5.3, f8.4, f20.15)
end program membrane
