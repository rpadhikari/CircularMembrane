FC=gfortran -c
LD=gfortran
SRC=fact.f90 bessel.f90 umn.f90 membrane.f90
OBJ=fact.o bessel.o umn.o membrane.o
bessel:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o membrane.x 
	rm -rf *.o
clean:
	rm -rf membrane.x
	rm -rf *.o

