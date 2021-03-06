/*
 * Copyright (C) 2013-2014 Freescale Semiconductor, Inc.
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#include <config.h>

/* DDR script */
.macro imx6sx_sabresd_ddr_setting
	ldr r0, =IOMUXC_BASE_ADDR
	ldr r1, =0x000c0000
	str r1, [r0, #0x618]
	ldr r1, =0x00000000
	str r1, [r0, #0x5fc]
	ldr r1, =0x00000030
	str r1, [r0, #0x32c]

	ldr r1, =0x00000020
	str r1, [r0, #0x300]
	str r1, [r0, #0x2fc]
	str r1, [r0, #0x5f4]
	str r1, [r0, #0x340]

	ldr r1, =0x00000000
	str r1, [r0, #0x320]
	ldr r1, =0x00000020
	str r1, [r0, #0x310]
	str r1, [r0, #0x314]
	str r1, [r0, #0x614]

	ldr r1, =0x00020000
	str r1, [r0, #0x5f8]
	ldr r1, =0x00000028
	str r1, [r0, #0x330]
	str r1, [r0, #0x334]
	str r1, [r0, #0x338]
	str r1, [r0, #0x33c]
	ldr r1, =0x00020000
	str r1, [r0, #0x608]
	ldr r1, =0x00000028
	str r1, [r0, #0x60c]
	str r1, [r0, #0x610]
	str r1, [r0, #0x61c]
	str r1, [r0, #0x620]
	str r1, [r0, #0x2ec]
	str r1, [r0, #0x2f0]
	str r1, [r0, #0x2f4]
	str r1, [r0, #0x2f8]

	ldr r0, =MMDC_P0_BASE_ADDR
	ldr r2, =0xa1390003
	str r2, [r0, #0x800]
	ldr r2, =0x00290025
	str r2, [r0, #0x80c]
	ldr r2, =0x00220022
	str r2, [r0, #0x810]
	ldr r2, =0x41480144
	str r2, [r0, #0x83c]
	ldr r2, =0x01340130
	str r2, [r0, #0x840]
	ldr r2, =0x3C3E4244
	str r2, [r0, #0x848]
	ldr r2, =0x34363638
	str r2, [r0, #0x850]

	ldr r2, =0x33333333
	str r2, [r0, #0x81c]
	str r2, [r0, #0x820]
	str r2, [r0, #0x824]
	str r2, [r0, #0x828]

	ldr r2, =0x00000800
	str r2, [r0, #0x8b8]
	ldr r2, =0x0002002d
	str r2, [r0, #0x004]
	ldr r2, =0x00333030
	str r2, [r0, #0x008]
	ldr r2, =0x676b52f3
	str r2, [r0, #0x00c]
	ldr r2, =0xb66d8b63
	str r2, [r0, #0x010]
	ldr r2, =0x01ff00db
	str r2, [r0, #0x014]
	ldr r2, =0x00011740
	str r2, [r0, #0x018]
	ldr r2, =0x00008000
	str r2, [r0, #0x01c]
	ldr r2, =0x000026d2
	str r2, [r0, #0x02c]
	ldr r2, =0x006b1023
	str r2, [r0, #0x030]
	ldr r2, =0x0000005f
	str r2, [r0, #0x040]
	ldr r2, =0x84190000
	str r2, [r0, #0x000]
	ldr r2, =0x04008032
	str r2, [r0, #0x01c]
	ldr r2, =0x00008033
	str r2, [r0, #0x01c]
	ldr r2, =0x00048031
	str r2, [r0, #0x01c]
	ldr r2, =0x05208030
	str r2, [r0, #0x01c]
	ldr r2, =0x04008040
	str r2, [r0, #0x01c]
	ldr r2, =0x00000800
	str r2, [r0, #0x020]
	ldr r2, =0x00011117
	str r2, [r0, #0x818]
	ldr r2, =0x00000000
	str r2, [r0, #0x01c]
.endm
.macro imx6_clock_gating
	ldr r0, =CCM_BASE_ADDR
	ldr r1, =0xffffffff
	str r1, [r0, #0x068]
	str r1, [r0, #0x06c]
	str r1, [r0, #0x070]
	str r1, [r0, #0x074]
	str r1, [r0, #0x078]
	str r1, [r0, #0x07c]
	str r1, [r0, #0x080]
	str r1, [r0, #0x084]
.endm

.macro imx6_qos_setting
.endm

.macro imx6_ddr_setting
	imx6sx_sabresd_ddr_setting
.endm

/* include the common plugin code here */
#include <asm/arch/mx6_plugin.S>
