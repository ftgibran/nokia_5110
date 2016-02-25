################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
ProjetoNokiaLCD.elf.size \

ELFCHECK += \
ProjetoNokiaLCD.elf.elfcheck \


# All Target
all: ProjetoNokiaLCD.elf secondary-outputs

# Tool invocations
ProjetoNokiaLCD.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo Building target: $@
	@echo Invoking: MicroBlaze gcc linker
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../standalone_bsp_0/microblaze_0/lib -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.20.b -mno-xl-soft-mul -o"ProjetoNokiaLCD.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo Finished building target: $@
	@echo ' '

ProjetoNokiaLCD.elf.size: ProjetoNokiaLCD.elf
	@echo Invoking: MicroBlaze Print Size
	mb-size ProjetoNokiaLCD.elf  |tee "ProjetoNokiaLCD.elf.size"
	@echo Finished building: $@
	@echo ' '

ProjetoNokiaLCD.elf.elfcheck: ProjetoNokiaLCD.elf
	@echo Invoking: Xilinx ELF Check
	elfcheck ProjetoNokiaLCD.elf -hw ../../ProjetoNokiaLCD_hw_platform/system.xml -pe microblaze_0  |tee "ProjetoNokiaLCD.elf.elfcheck"
	@echo Finished building: $@
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) ProjetoNokiaLCD.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
