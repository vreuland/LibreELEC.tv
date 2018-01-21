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

# Notes:
# - build curl with OpenSSL support instead GnuTLS support to 
#   work around a long standing bug on Pi where https streams often hang on
#   start. This hang is normally fatal and requires a reboot.
#   see also http://trac.xbmc.org/ticket/14674 .
#   Easiest way to reproduce is to install gdrive addon and play a video from
#   there: http://forum.xbmc.org/showthread.php?tid=177557

PKG_NAME="USDX"
PKG_VERSION="2017.8.0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=" https://usdx.eu"
PKG_URL="https://github.com/UltraStar-Deluxe/USDX/archive/v2017.8.0.tar.gz"
PKG_DEPENDS_TARGET="toolchain zlib ffmpeg sqlite pcre SDL2 SDL2_image lua portaudio"
PKG_SECTION="multimedia"
PKG_SHORTDESC="UltraStar Deluxe (USDX) is a free and open source karaoke game "
PKG_LONGDESC="UltraStar Deluxe (USDX) is a free and open source karaoke game. It allows up to six players to sing along with music using microphones in order to score points, depending on the pitch of the voice and the rhythm of singing. UltraStar Deluxe is a fork of the original UltraStar (developed by corvus5). Many features have been added like party mode, theme support and support for more audio and video formats. The improved stability and code quality of USDX enabled ports to Linux and Mac OS X."

PKG_IS_ADDON="no"
PKG_USE_CMAKE="no"
PKG_AUTORECONF="no"

#PKG_CONFIGURE_OPTS_TARGET=""

pre_configure_target() {
  export LDFLAGS="-lm"
  export PFLAGS_EXTRA="-Xd -Fl$SYSROOT_PREFIX/usr/lib -Fl$SYSROOT_PREFIX/lib"
  ./autogen.sh
}


configure_target() {
  ./configure --host=$TARGET_NAME \
              --build=$HOST_NAME \
              --prefix=/usr \
              --bindir=/usr/bin \
              --sbindir=/usr/sbin \
              --sysconfdir=/etc \
              --libdir=/usr/lib \
              --libexecdir=/usr/lib \
              --localstatedir=/var \
              --disable-static \
              --enable-shared
}


