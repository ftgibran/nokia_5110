@echo off
mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../standalone_bsp_0/microblaze_0/include -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.20.b -mno-xl-soft-mul -MMD -MP -MF"src/Spi.d" -MT"src/Spi.d" -o"src/Spi.o" "../src/Spi.c"
