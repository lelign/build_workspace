FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESPATH:prepend := "/home/iru/poky-socfpga/build/workspace/sources/hello-world/oe-local-files:"
# srctreebase: /home/iru/poky-socfpga/build/workspace/sources/hello-world

inherit externalsrc
# NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND
EXTERNALSRC:pn-hello-world = "/home/iru/poky-socfpga/build/workspace/sources/hello-world"
EXTERNALSRC_BUILD:pn-hello-world = "/home/iru/poky-socfpga/build/workspace/sources/hello-world"

# initial_rev .: 53d9c3bb497c6176f7f2e7af982d2ec91a627d0e
