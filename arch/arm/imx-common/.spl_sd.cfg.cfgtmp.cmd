cmd_arch/arm/imx-common/spl_sd.cfg.cfgtmp := arm-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/imx-common/.spl_sd.cfg.cfgtmp.d  -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/5/include -Iinclude  -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SYS_TEXT_BASE=0x87800000    -D__ARM__ -Wa,-mimplicit-it=always  -mthumb -mthumb-interwork  -mabi=aapcs-linux  -mword-relocations  -mno-unaligned-access  -ffunction-sections -fdata-sections -fno-common -ffixed-r9  -msoft-float  -pipe  -march=armv7-a     -x c -o arch/arm/imx-common/spl_sd.cfg.cfgtmp arch/arm/imx-common/spl_sd.cfg

source_arch/arm/imx-common/spl_sd.cfg.cfgtmp := arch/arm/imx-common/spl_sd.cfg

deps_arch/arm/imx-common/spl_sd.cfg.cfgtmp := \

arch/arm/imx-common/spl_sd.cfg.cfgtmp: $(deps_arch/arm/imx-common/spl_sd.cfg.cfgtmp)

$(deps_arch/arm/imx-common/spl_sd.cfg.cfgtmp):
