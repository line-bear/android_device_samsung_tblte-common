#
# Copyright (C) 2015-2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	$(LOCAL_PATH)/overlay \
	$(LOCAL_PATH)/overlay-lineage

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
	$(LOCAL_PATH)/audio/audio_platform_info_i2s.xml:system/vendor/etc/audio_platform_info_i2s.xml \
	$(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/vendor/etc/sound_trigger_platform_info_xml \
	$(LOCAL_PATH)/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
	$(LOCAL_PATH)/audio/jack_alsa_mixer.json:system/vendor/etc/jack_alsa_mixer.json \
	$(LOCAL_PATH)/audio/mixer_paths_i2s.xml:system/vendor/etc/mixer_paths_i2s.xml \
	$(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/vendor/etc/sound_trigger_mixer_paths.xml

# Bluetooth	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/bluetooth/auto_pair_devlist.conf:/system/vendor/etc/bluetooth/auto_pair_devlist.conf \
	$(LOCAL_PATH)/configs/bluetooth/bt_did.conf:/system/vendor/etc/bluetooth/bt_did.conf \
	$(LOCAL_PATH)/configs/bluetooth/bt_stack.conf:/system/vendor/etc/bluetooth/bt_stack.conf \
	$(LOCAL_PATH)/configs/bluetooth/iop_bt.db:/system/vendor/etc/bluetooth/iop_bt.db \
	$(LOCAL_PATH)/configs/bluetooth/iop_device_list.conf:/system/vendor/etc/bluetooth/iop_device_list.conf

# Camera
PRODUCT_PACKAGES += \
	android.hardware.camera.provider@2.4-impl \
	camera.device@1.0-impl \
	camera.apq8084 \
	libxml2 \
	Snap

# Display & Graphics
PRODUCT_PACKAGES += \
	libhdmi \
	libqdutils \
	libgenlock \
	liboverlay \
	libqservice \
	libvirtual

# Doze service
PRODUCT_PACKAGES += \
	SamsungDoze
	
# FlipFlap
PRODUCT_PACKAGES += \
	FlipFlap

PRODUCT_PACKAGES += \
   libhealthd.default

# IPv6 tethering
PRODUCT_PACKAGES += \
	ebtables \
	ethertypes  

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
	$(LOCAL_PATH)/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
	$(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_e-pen.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
	$(LOCAL_PATH)/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
	$(LOCAL_PATH)/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(LOCAL_PATH)/idc/sec_e-pen.idc:system/usr/idc/sec_e-pen.idc \
	$(LOCAL_PATH)/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	sys.keymaster.loaded=true

PRODUCT_PACKAGES += \
	android.hardware.drm@1.0-impl

# Lights
PRODUCT_PACKAGES += \
	android.hardware.light@2.0-impl \
	lights.APQ8084

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/vendor/etc/media_profiles.xml \
	$(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.camera.full.xml:system/vendor/etc/permissions/android.hardware.camera.full.xml \
	frameworks/native/data/etc/android.hardware.camera.raw.xml:system/vendor/etc/permissions/android.hardware.camera.raw.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/vendor/etc/permissions/android.hardware.sensor.stepcounter.xml \
	frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/vendor/etc/permissions/android.hardware.sensor.stepdetector.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/vendor/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.heartrate.ecg.xml:system/vendor/etc/permissions/android.hardware.sensor.heartrate.ecg.xml \
	frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/vendor/etc/permissions/android.hardware.sensor.heartrate.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/vendor/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml
	
# Netutils
PRODUCT_PACKAGES += \
	netutils-wrapper-1.0 \
	android.system.net.netd@1.0 \
	libandroid_net

# QCOM perf lib
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.extension_library=/vendor/lib/libqc-opt.so

# Radio
PRODUCT_PACKAGES += \
	librmnetctl \
	libsecnativefeature \
	libsecril-client-sap \
	libsecril-client \
	libshim_cutils_atomic

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/spn-conf.xml:system/vendor/etc/spn-conf.xml

# Ramdisk
PRODUCT_PACKAGES += \
	fstab.qcom \
	init.qcom.rc \
	init.qcom.power.rc \
	init.qcom.usb.rc \
	init.qcom.usb.sh \
	init.sec.boot.sh \
	init.trace.rc \
	ueventd.qcom.rc

# TimeKeep
PRODUCT_PACKAGES += \
	timekeep \
	TimeKeep	

# Thermal
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/thermal-engine.conf:system/vendor/etc/thermal-engine.conf

# Torch
PRODUCT_PACKAGES += \
	Torch

# Vibrator
PRODUCT_PACKAGES += \
	android.hardware.vibrator@1.0-impl

# Wifi
PRODUCT_PACKAGES += \
	libwpa_client \
	libnetcmdiface \
	macloader 

# WiFi config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml

# Reduce client buffer size for fast audio output tracks
PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1

# Low latency audio buffer size in frames
PRODUCT_PROPERTY_OVERRIDES += \
	audio_hal.period_size=192

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/tblte-common/tblte-common-vendor.mk)

# Common Qualcomm
$(call inherit-product, device/samsung/apq8084-common/apq8084.mk)
