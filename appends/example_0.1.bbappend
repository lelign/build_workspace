FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESPATH:prepend := "/home/iru/poky-socfpga/build/workspace/sources/example/oe-local-files:"
# srctreebase: /home/iru/poky-socfpga/build/workspace/sources/example

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC:pn-example = "/home/iru/poky-socfpga/build/workspace/sources/example"
EXTERNALSRC_BUILD:pn-example = "/home/iru/poky-socfpga/build/workspace/sources/example"

# initial_rev .: df5859c5645b9c719ceffde36659650ec5d9a8a8
