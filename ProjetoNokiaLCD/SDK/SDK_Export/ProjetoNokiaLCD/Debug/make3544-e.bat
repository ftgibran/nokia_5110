@echo off
elfcheck ProjetoNokiaLCD.elf -hw ../../ProjetoNokiaLCD_hw_platform/system.xml -pe microblaze_0  |tee "ProjetoNokiaLCD.elf.elfcheck"
