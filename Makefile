FC=gfortran -c
LD=gfortran
SRC=main.f90 fact.f90 bessel.f90
OBJ=main.o fact.o bessel.o
bessel:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o bessel.x 
	rm -rf *.o
clean:
	rm -rf bessel.x
	rm -rf *.o

