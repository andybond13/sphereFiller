#CPP       = mpic++
CPP       = g++
CPP_FLAGS = -Wall -fPIC -m32 -g -std=c++11 #-O3

# Classical compilation of the sphereFiller
sphereFiller.exe: sphereFiller.o 
	$(CPP) $(CPP_FLAGS) -o sphereFiller.exe sphereFiller.o

sphereFiller.o: sphereFiller.c
	$(CPP) $(CPP_FLAGS) -c sphereFiller.c -o sphereFiller.o

clean:
	rm *.o *.exe
