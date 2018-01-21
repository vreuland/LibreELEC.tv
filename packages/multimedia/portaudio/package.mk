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

PKG_NAME="portaudio"
PKG_VERSION="19"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://www.portaudio.com"
PKG_URL="http://portaudio.com/archives/pa_stable_v190600_20161030.tgz"
PKG_SOURCE_DIR="$PKG_NAME"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="multimedia"
PKG_SHORTDESC="PortAudio is a free, cross-platform, open-source, audio I/O library"
PKG_LONGDESC=" It lets you write simple audio programs in 'C' or C++ that will compile and run on many platforms including Windows, Macintosh OS X, and Unix (OSS/ALSA). It is intended to promote the exchange of audio software between developers on different platforms. Many applications use PortAudio for Audio I/O."

PKG_IS_ADDON="no"
PKG_USE_CMAKE="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""

pre_configure_target() {
  echo "LDFLAGS=$LDFLAGS"
}


