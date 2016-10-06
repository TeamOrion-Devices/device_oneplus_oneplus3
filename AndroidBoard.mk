LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(ADD_RADIO_FILES), true)
radio_dir := $(LOCAL_PATH)/radio
RADIO_FILES := $(shell cd $(radio_dir) ; ls)
$(foreach f, $(RADIO_FILES), \
    $(call add-radio-file,radio/$(f)))
endif

#radio file
$(call add-radio-file,firmware/NON-HLOS.bin)
#static_nvbk image
$(call add-radio-file,firmware/static_nvbk.bin)
#emmc_appsboot image
$(call add-radio-file,firmware/emmc_appsboot.mbn)
#rpm image
$(call add-radio-file,firmware/rpm.mbn)
#pmic image
$(call add-radio-file,firmware/pmic.elf)
#tz version image
$(call add-radio-file,firmware/tz.mbn)
#hyp.mbn image
$(call add-radio-file,firmware/hyp.mbn)
#Bluetooth image
$(call add-radio-file,firmware/BTFM.bin)
#dsp image
$(call add-radio-file,firmware/adspso.bin)
#cmnlib image
$(call add-radio-file,firmware/cmnlib.mbn)
#cmnlib64 image
$(call add-radio-file,firmware/cmnlib64.mbn)
#devcfg image
$(call add-radio-file,firmware/devcfg.mbn)
#keymaster image
$(call add-radio-file,firmware/keymaster.mbn)
#xbl image
$(call add-radio-file,firmware/xbl.elf)
