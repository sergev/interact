OBJ             = interact.o test.o catch/catch.o
CXX             = c++ -std=c++11 -g
CXXFLAGS        = -O -Wall -Werror
LDFLAGS         =
LIBS            = -lpthread

all:            interact

interact:       $(OBJ)
		$(CXX) $(LDFLAGS) $(OBJ) $(LIBS) -o $@

clean:
		rm -f *.o interact

test:           interact
		./interact -s -r compact
###
interact.o: interact.cpp interact.h
test.o: test.cpp interact.h catch/catch.hpp
