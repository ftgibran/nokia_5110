#include "Spi.h"

int initSpiPolled(XSpi *SpiPtr, u16 SpiDeviceId)
{
	int Status;
	XSpi_Config *ConfigPtr;	/* Pointer to Configuration data */

	/*
	 * Initialize the SPI driver so that it is  ready to use.
	 */
	ConfigPtr = XSpi_LookupConfig(SpiDeviceId);
	if (ConfigPtr == NULL)
	{
		xil_printf("\n\rXSpi_LookupConfig: XST_DEVICE_NOT_FOUND\n\r");
		return XST_DEVICE_NOT_FOUND;
	}

	Status = XSpi_CfgInitialize(SpiPtr, ConfigPtr, ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("\n\rXSpi_CfgInitialize: XST_FAILURE\n\r");
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XSpi_SelfTest(SpiPtr);
	if (Status != XST_SUCCESS)
	{
		xil_printf("\n\rXSpi_SelfTest: XST_FAILURE\n\r");
		return XST_FAILURE;
	}

	/*
	 * Set the Spi device as a master and in loopback mode.
	 */
	Status = XSpi_SetOptions(SpiPtr, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
	if (Status != XST_SUCCESS)
	{
		xil_printf("\n\rXSpi_SetOptions: XST_FAILURE\n\r");
		return XST_FAILURE;
	}

	Status = XSpi_SetSlaveSelect(SpiPtr, 1);// Não usado
	if (Status != XST_SUCCESS)
	{
		xil_printf("XSpi_SetSlaveSelect: XST_FAILURE\n\r");
		return XST_FAILURE;
	}


	/*
	 * Start the SPI driver so that the device is enabled.
	 */
	Status=XSpi_Start(SpiPtr);
	if (Status != XST_SUCCESS)
	{
		xil_printf("XSpi_Start: XST_FAILURE\n\r");
		return XST_FAILURE;
	}

	/*
	 * Disable Global interrupt to use polled mode operation
	 */
	Status=XSpi_IntrGlobalDisable(SpiPtr);
	if (Status != XST_SUCCESS)
	{
		xil_printf("XSpi_IntrGlobalDisable: XST_FAILURE\n\r");
		return XST_FAILURE;
	}


	return XST_SUCCESS;
}

