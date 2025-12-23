FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESPATH:prepend := "/home/iru/poky-socfpga/build/workspace/sources/u-boot-socfpga/oe-local-files:"
# srctreebase: /home/iru/poky-socfpga/build/workspace/sources/u-boot-socfpga

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC:pn-u-boot-socfpga = "/home/iru/poky-socfpga/build/workspace/sources/u-boot-socfpga"

do_configure:append() {
    if [ ${@oe.types.boolean(d.getVar("KCONFIG_CONFIG_ENABLE_MENUCONFIG"))} = True ]; then
        cp ${KCONFIG_CONFIG_ROOTDIR}/.config ${S}/.config.baseline
        ln -sfT ${KCONFIG_CONFIG_ROOTDIR}/.config ${S}/.config.new
    fi
}

# initial_rev .: 35abb4f1cedc94b17b8771b39b66ff4047fe35d1
