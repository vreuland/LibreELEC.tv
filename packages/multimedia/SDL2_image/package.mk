################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="SDL2_image"
PKG_VERSION="2.0.0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://www.libsdl.org/"
PKG_URL="https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.0.tar.gz"
PKG_DEPENDS_TARGET="toolchain SDL2"
PKG_SECTION="multimedia"
PKG_SHORTDESC="SDL_image is an image file loading library"
PKG_LONGDESC="SDL_image is an image file loading library. It loads images as SDL surfaces and textures, and supports the following formats: BMP, GIF, JPEG, LBM, PCX, PNG, PNM, SVG, TGA, TIFF, WEBP, XCF, XPM, XV"

PKG_IS_ADDON="no"
PKG_USE_CMAKE="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""


