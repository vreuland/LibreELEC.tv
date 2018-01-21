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

PKG_NAME="lua"
PKG_VERSION="5.3.4"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://www.lua.org"
PKG_URL="http://www.lua.org/ftp/lua-5.3.4.tar.gz"
PKG_DEPENDS_TARGET="toolchain readline"
PKG_SECTION="devel"
PKG_SHORTDESC="Lua is a powerful, efficient, lightweight, embeddable scripting language"
PKG_LONGDESC="Lua is a powerful, efficient, lightweight, embeddable scripting language. It supports procedural programming, object-oriented programming, functional programming, data-driven programming, and data description."

PKG_IS_ADDON="no"
PKG_USE_CMAKE="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""


make_target() {
  make linux
}

makeinstall_target() {
  make INSTALL_TOP="$SYSROOT_PREFIX" install
  echo "Name: lua" > lua.pc
  echo "Description: An Extensible Extension Language" >> lua.pc
  echo "Version: $PKG_VERSION" >> lua.pc
  echo "Libs: -L$SYSROOT_PREFIX/lib -llua -lm" >> lua.pc
  echo "Cflags: -I$SYSROOT_PREFIX/include" >> lua.pc
}

post_makeinstall_target() {
  mkdir -p "$SYSROOT_PREFIX/usr/lib/pkgconfig"
  cp lua.pc "$SYSROOT_PREFIX/usr/lib/pkgconfig"

}


