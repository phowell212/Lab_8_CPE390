#include "GravSim.hh"

int main(int argc, char* argv[]) {
	GravSim sim("solarsys.dat");
	for (uint32_t i = 0; i < uint32_t((365.2425 * 24 * 60 * 60) / 10); i+= uint32_t((365.2425 * 24 * 60 * 60) / 10)) {
		sim.forward(uint32_t((365.2425 * 24 * 60 * 60) / 10), 10);
	}
}
