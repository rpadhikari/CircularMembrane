FC=gcc -c
LD=gcc
SRC=fact.c bessel.c umn.c main.c
OBJ=fact.o bessel.o umn.o main.o
bessel:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o membrane.x -lm
	rm -rf *.o
clean:
	rm -rf membrane.x
	rm -rf *.o

