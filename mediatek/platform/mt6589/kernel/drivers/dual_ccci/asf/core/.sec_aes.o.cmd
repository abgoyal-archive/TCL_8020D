cmd_mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.o := arm-linux-androideabi-gcc -Wp,-MD,mediatek/platform/mt6589/kernel/drivers/masp/asf/core/.sec_aes.o.d  -nostdinc -isystem /data/scribepro/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/include -I/data/scribepro/kernel/arch/arm/include -Iarch/arm/include/generated -Iinclude  -include /data/scribepro/kernel/include/linux/kconfig.h -I../mediatek/custom///common -I../mediatek/platform/mt6589/kernel/core/include/ -I../mediatek/kernel/include/ -I../mediatek/custom/out/scribepro/kernel/dct/ -I../mediatek/custom/out/scribepro/kernel/accelerometer/ -I../mediatek/custom/out/scribepro/kernel/vibrator/ -I../mediatek/custom/out/scribepro/kernel/alsps/ -I../mediatek/custom/out/scribepro/kernel/kpd/ -I../mediatek/custom/out/scribepro/kernel/flashlight/ -I../mediatek/custom/out/scribepro/kernel/battery/ -I../mediatek/custom/out/scribepro/kernel/touchpanel/ -I../mediatek/custom/out/scribepro/kernel/camera/ -I../mediatek/custom/out/scribepro/kernel/core/ -I../mediatek/custom/out/scribepro/kernel/rtc/ -I../mediatek/custom/out/scribepro/kernel/leds/ -I../mediatek/custom/out/scribepro/kernel/imgsensor/ -I../mediatek/custom/out/scribepro/kernel/magnetometer/ -I../mediatek/custom/out/scribepro/kernel/headset/ -I../mediatek/custom/out/scribepro/kernel/usb/ -I../mediatek/custom/out/scribepro/kernel/accelerometer/inc/ -I../mediatek/custom/out/scribepro/kernel/lens/inc/ -I../mediatek/custom/out/scribepro/kernel/lens/ -I../mediatek/custom/out/scribepro/kernel/barometer/inc/ -I../mediatek/custom/out/scribepro/kernel/alsps/inc/ -I../mediatek/custom/out/scribepro/kernel/flashlight/inc/ -I../mediatek/custom/out/scribepro/kernel/sound/inc/ -I../mediatek/custom/out/scribepro/kernel/sound/ -I../mediatek/custom/out/scribepro/kernel/hdmi/inc/ -I../mediatek/custom/out/scribepro/kernel/ccci/ -I../mediatek/custom/out/scribepro/kernel/cam_cal/inc/ -I../mediatek/custom/out/scribepro/kernel/cam_cal/ -I../mediatek/custom/out/scribepro/kernel/ssw/inc/ -I../mediatek/custom/out/scribepro/kernel/ssw/ -I../mediatek/custom/out/scribepro/kernel/gyroscope/inc/ -I../mediatek/custom/out/scribepro/kernel/lcm/inc/ -I../mediatek/custom/out/scribepro/kernel/lcm/ -I../mediatek/custom/out/scribepro/kernel/./ -I../mediatek/custom/out/scribepro/kernel/jogball/inc/ -I../mediatek/custom/out/scribepro/kernel/leds/inc/ -I../mediatek/custom/out/scribepro/kernel/imgsensor/inc/ -I../mediatek/custom/out/scribepro/kernel/magnetometer/inc/ -I../mediatek/custom/out/scribepro/kernel/eeprom/inc/ -I../mediatek/custom/out/scribepro/kernel/eeprom/ -I../mediatek/custom/out/scribepro/hal/audioflinger/ -I../mediatek/custom/out/scribepro/hal/lens/ -I../mediatek/custom/out/scribepro/hal/camera/ -I../mediatek/custom/out/scribepro/hal/sensors/ -I../mediatek/custom/out/scribepro/hal/imgsensor/ -I../mediatek/custom/out/scribepro/hal/inc/ -I../mediatek/custom/out/scribepro/hal/camera/inc/ -I../mediatek/custom/out/scribepro/hal/combo/ -I../mediatek/custom/out/scribepro/hal/matv/ -I../mediatek/custom/out/scribepro/hal/flashlight/ -I../mediatek/custom/out/scribepro/hal/vt/ -I../mediatek/custom/out/scribepro/hal/fmradio/ -I../mediatek/custom/out/scribepro/hal/bluetooth/ -I../mediatek/custom/out/scribepro/hal/cam_cal/ -I../mediatek/custom/out/scribepro/hal/ant/ -I../mediatek/custom/out/scribepro/hal/eeprom/ -I../mediatek/custom/out/scribepro/common -D__KERNEL__ -mlittle-endian -DMODEM_3G -Imediatek/platform/mt6589/kernel/core/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-pic -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -DMTK_MD_SHUT_DOWN_NT -DMTK_SPM_MCDI_ENABLE -DMTK_LCEEFT_SUPPORT -DMTK_USES_VR_DYNAMIC_QUALITY_MECHANISM -DMTK_PLATFORM_OPTIMIZE -DMTK_PQ_SUPPORT -DMTK_AUDIO_ADPCM_SUPPORT -DHAVE_ADPCMENCODE_FEATURE -DMTK_WEB_NOTIFICATION_SUPPORT -DMTK_VOICE_UNLOCK_SUPPORT -DMTK_IPOH_SUPPORT -DMTK_WFD_SUPPORT -DMTK_AAL_SUPPORT -DMTK_KERNEL_POWER_OFF_CHARGING -DMTK_FLIGHT_MODE_POWER_OFF_MD -DMTK_ENABLE_MD1 -DMTK_BT_PROFILE_AVRCP -DMTK_GPS_SUPPORT -DMTK_FM_SUPPORT -DMTK_USES_HD_VIDEO -DMTK_BT_PROFILE_MANAGER -DMTK_FM_RECORDING_SUPPORT -DMTK_DEDICATEDAPN_SUPPORT -DMTK_BT_PROFILE_HIDH -DMTK_BT_PROFILE_PBAP -DMTK_BT_PROFILE_HFP -DMTK_MASS_STORAGE -DMTK_BICR_SUPPORT -DMTK_THEMEMANAGER_APP -DMTK_HDR_SUPPORT -DMTK_MERGE_INTERFACE_SUPPORT -DHAVE_AACENCODE_FEATURE -DMTK_WIFI_HOTSPOT_SUPPORT -DMTK_COMBO_SUPPORT -DMTK_BT_PROFILE_OPP -DMTK_MULTI_STORAGE_SUPPORT -DCUSTOM_KERNEL_ALSPS -DMTK_ENABLE_VIDEO_EDITOR -DCUSTOM_KERNEL_ACCELEROMETER -DMTK_DUAL_MIC_SUPPORT -DMTK_WAPI_SUPPORT -DMTK_FD_SUPPORT -DMTK_BT_SUPPORT -DMTK_FACEBEAUTY_SUPPORT -DMTK_BT_40_SUPPORT -DMTK_ASF_PLAYBACK_SUPPORT -DMTK_HIGH_QUALITY_THUMBNAIL -DMTK_SPH_EHN_CTRL_SUPPORT -DHAVE_XLOG_FEATURE -DMTK_IPV6_SUPPORT -DMTK_AUTORAMA_SUPPORT -DMTK_EAP_SIM_AKA -DMTK_MATV_ANALOG_SUPPORT -DMTK_BT_PROFILE_A2DP -DCUSTOM_KERNEL_MAGNETOMETER -DMTK_BT_PROFILE_PAN -DMTK_CAMERA_APP_3DHW_SUPPORT -DMTK_WLAN_SUPPORT -DMTK_TETHERINGIPV6_SUPPORT -DMTK_EMMC_SUPPORT_OTP -DMTK_PRODUCT_INFO_SUPPORT -DMTK_M4U_SUPPORT -DMTK_BT_PROFILE_SPP -DMTK_BT_30_SUPPORT -DMTK_ION_SUPPORT -DHAVE_AWBENCODE_FEATURE -DMTK_BQ24196_SUPPORT -DMTK_CAMERA_BSP_SUPPORT -DMTK_FM_RX_SUPPORT -DMTK_WB_SPEECH_SUPPORT -DMTK_VT3G324M_SUPPORT -DMTK_SENSOR_SUPPORT -DMTK_EMMC_SUPPORT -DMTK_BT_21_SUPPORT -DMTK_DHCPV6C_WIFI -DCU_HD720 -DMTK_AUDIO_BLOUD_CUSTOMPARAMETER_V4 -DMT6589 -DDW9714A -DDUMMY_LENS -DR63311_SCRIBEPRO -DMODEM_3G -DIMX135_MIPI_RAW -DMTK_MT6620 -DMT6620 -DCONSTANT_FLASHLIGHT -DIMX132_MIPI_RAW -DDUMMY_LENS -DIMX135_MIPI_RAW -DIMX132_MIPI_RAW -DFM_ANALOG_INPUT -DMT6620E3 -DMTK_GPS_MT6620 -DDW9714A -DFM_ANALOG_OUTPUT -DMT6620_FM -DCU_HD720 -DMTK_SIM1_SOCKET_TYPE=\"1\" -DMTK_SIM2_SOCKET_TYPE=\"1\" -DCUSTOM_KERNEL_SSW=\"ssw_generic\" -DMTK_LCM_PHYSICAL_ROTATION=\"0\" -DLCM_WIDTH=\"1080\" -DMTK_SHARE_MODEM_SUPPORT=\"2\" -DMTK_NEON_SUPPORT=\"yes\" -DMTK_SHARE_MODEM_CURRENT=\"2\" -DLCM_HEIGHT=\"1920\" -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Imediatek/platform/mt6589/kernel/drivers/masp/asf/inc -Imediatek/platform/mt6589/kernel/drivers/masp/asf/inc -Imediatek/platform/mt6589/kernel/drivers/masp -Imediatek/platform/mt6589/kernel/drivers/masp/inc  -DMODULE  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(sec_aes)"  -D"KBUILD_MODNAME=KBUILD_STR(sec)" -c -o mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.o mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.c

source_mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.o := mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.c

deps_mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.o := \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_osal_light.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /data/scribepro/kernel/arch/arm/include/asm/types.h \
  include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  /data/scribepro/kernel/arch/arm/include/asm/posix_types.h \
  include/asm-generic/posix_types.h \
  /data/scribepro/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/include/stdarg.h \
  /data/scribepro/kernel/arch/arm/include/asm/string.h \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  include/linux/sysinfo.h \
  include/linux/linkage.h \
  /data/scribepro/kernel/arch/arm/include/asm/linkage.h \
  include/linux/bitops.h \
  /data/scribepro/kernel/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/preempt/monitor.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /data/scribepro/kernel/arch/arm/include/asm/irqflags.h \
  /data/scribepro/kernel/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /data/scribepro/kernel/arch/arm/include/asm/hwcap.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/le.h \
  /data/scribepro/kernel/arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  /data/scribepro/kernel/arch/arm/include/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  include/linux/dynamic_debug.h \
  /data/scribepro/kernel/arch/arm/include/asm/div64.h \
  /data/scribepro/kernel/arch/arm/include/asm/compiler.h \
  /data/scribepro/kernel/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /data/scribepro/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.6/bin/../lib/gcc/arm-linux-androideabi/4.6.x-google/include/stdbool.h \
  /data/scribepro/kernel/arch/arm/include/asm/io.h \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
    $(wildcard include/config/mmu.h) \
  /data/scribepro/kernel/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
  include/linux/const.h \
  arch/arm/include/generated/asm/sizes.h \
  include/asm-generic/sizes.h \
  ../mediatek/platform/mt6589/kernel/core/include/mach/memory.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /data/scribepro/kernel/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
  /data/scribepro/kernel/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  include/linux/err.h \
  arch/arm/include/generated/asm/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_aes.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_cipher_header.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_typedef.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_osal_light.h \
  ../mediatek/platform/mt6589/kernel/core/include/mach/sec_osal.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_error.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_rom_info.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_boot.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_key.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_ctrl.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_secroimg.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/sec_key_util.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/aes_legacy.h \
  mediatek/platform/mt6589/kernel/drivers/masp/asf/inc/aes_so.h \

mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.o: $(deps_mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.o)

$(deps_mediatek/platform/mt6589/kernel/drivers/masp/asf/core/sec_aes.o):
