@echo off
mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -I../../standalone_bsp_0/microblaze_0/include -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.20.b -mno-xl-soft-mul -MMD -MP -MF"src/Nokia5110.d" -MT"src/Nokia5110.d" -o"src/Nokia5110.o" "../src/Nokia5110.c"
