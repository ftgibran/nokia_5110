@echo off
mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../standalone_bsp_0/microblaze_0/lib -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.20.b -mno-xl-soft-mul -o"ProjetoNokiaLCD.elf"  ./src/Nokia5110.o ./src/Spi.o   -Wl,--start-group,-lxil,-lgcc,-lc,--end-group
