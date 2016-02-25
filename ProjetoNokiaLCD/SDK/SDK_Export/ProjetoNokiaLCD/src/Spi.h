
#ifndef SPI_H_
#define SPI_H_

#include "xspi.h"
#include "xspi_l.h"
#include "xuartlite.h"
#include "xgpio.h"
#include "unistd.h"
#include "xparameters.h"

static XSpi  Spi;
static XGpio LED;
static XGpio D_C;
static XGpio RST;
static XGpio SCE;
static XUartLite UartLite;

#define BUFFER_SIZE		4
u8 WriteBuffer[BUFFER_SIZE];

int initSpiPolled(XSpi *SpiInstancePtr, u16 SpiDeviceId);

#endif
