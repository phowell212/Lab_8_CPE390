DEBUG	:= -g
OPT	:= -O2
CXX	:= g++ -std=c++11 $(DEBUG) $(OPT)
gravsim: GravSim.o Vec3d.o main.o
	$(CXX) GravSim.o Vec3d.o main.o -o gravsim

GravSim.o: GravSim.cc GravSim.hh
	$(CXX) -c GravSim.cc

Vec3d.o: Vec3d.cc
	$(CXX) -c Vec3d.cc

main.o: main.cc GravSim.hh
	$(CXX) -c main.cc

clean:
	rm *.o gravsim
