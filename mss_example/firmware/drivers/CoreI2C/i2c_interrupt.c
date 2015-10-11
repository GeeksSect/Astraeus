/*******************************************************************************
 * (c) Copyright 2009-2014 Microsemi SoC Products Group.  All rights reserved.
 * 
 * CoreI2C driver interrupt control.
 * 
 * SVN $Revision: 6251 $
 * SVN $Date: 2014-03-25 12:34:59 +0000 (Tue, 25 Mar 2014) $
 */
#include "hal.h"
#include "hal_assert.h"
#include "core_i2c.h"

/*------------------------------------------------------------------------------
 * This function must be modified to enable interrupts generated from the
 * CoreI2C instance identified as parameter.
 */
void I2C_enable_irq( i2c_instance_t * this_i2c )
{
    HAL_ASSERT(0)
}

/*------------------------------------------------------------------------------
 * This function must be modified to disable interrupts generated from the
 * CoreI2C instance identified as parameter.
 */
void I2C_disable_irq( i2c_instance_t * this_i2c )
{
    HAL_ASSERT(0)
}
