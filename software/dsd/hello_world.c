
#include <stdlib.h>
#include "sys/alt_stdio.h"
#include "system.h"
#include <stdio.h>
#include "altera_avalon_pio_regs.h"
#include "notch.h"

extern short _binary_beeth5_noise_bin_start[];
extern short _binary_beeth5_noise_bin_end[];
extern int _binary_beeth5_noise_bin_size;

int main()
{
	start_notch(_binary_beeth5_noise_bin_start, _binary_beeth5_noise_bin_end);

	//The notch filtering will be conducted in the background.
	//Code to perform other useful tasks can be put here.
	while(notch_busy());

	//Read performance counter
	unsigned int performance = notch_performance();

	//Print time taken for filtering operation
	char buf[16];
	gcvt((float)performance/ALT_CPU_FREQ, 10, buf);
	alt_putstr(" proc time = "); alt_putstr(buf); alt_putstr(" seconds \n");

	while(1);
}

//int alt_main(){
//	return main();
//}
