# Herda as configurações do emulador (produto sdk_phone_x86_64)
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk_phone_x86_64.mk)

# Sobrescreve algumas variáveis com os dados do novo produto
PRODUCT_NAME := devtitans_kraken
PRODUCT_DEVICE := kraken
PRODUCT_BRAND := KrakenBrand
PRODUCT_MODEL := KrakenModel



# Copia o arquivo devtitans.txt para o /system/etc da imagem do Android
PRODUCT_COPY_FILES += \
	     device/devtitans/kraken/devtitans.txt:system/etc/devtitans.txt \
             device/devtitans/kraken/kraken.rc:vendor/etc/init/kraken.rc \
 	     device/devtitans/kraken/bootanimation.zip:product/media/bootanimation.zip

PRODUCT_SYSTEM_PROPERTIES += \
    ro.devtitans.name=Kraken

PRODUCT_PRODUCT_PROPERTIES += \
    ro.product.devtitans.version=1.0

PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.devtitans.hardware=ModelB


# Seta o diretório de overlays
PRODUCT_PACKAGE_OVERLAYS = device/devtitans/kraken/overlay


# Adiciona os modulos 
PRODUCT_PACKAGES += \
    UniversalMediaPlayer \
    hello_c \
    nano \
    sl \
    hello_cpp
