# ARCH will be auto-detected as the host if not specified
#ARCH=i486
#ARCH=x86_64
#ARCH=powerpc
#ARCH=arm
#ARCH=microblaze
#ARCH=mips
#ARCH=mipsel
ARCH=or1k

CC_BASE_PREFIX=/opt/cross

# If you use arm, you may need more fine-tuning:
# arm hardfloat v7
#TRIPLE=arm-linux-musleabihf
#GCC_BOOTSTRAP_CONFFLAGS="--with-arch=armv7-a --with-float=hard --with-fpu=vfpv3-d16"
#GCC_CONFFLAGS="--with-arch=armv7-a --with-float=hard --with-fpu=vfpv3-d16"

# arm softfp
#TRIPLE=arm-linux-musleabi
#GCC_BOOTSTRAP_CONFFLAGS="--with-arch=armv7-a --with-float=softfp"
#GCC_CONFFLAGS="--with-arch=armv7-a --with-float=softfp"

MAKEFLAGS=-j8

# Enable this to build the bootstrap gcc (thrown away) without optimization, to reduce build time
GCC_STAGE1_NOOPT=1

BINUTILS_URL=ftp://sourceware.org/pub/binutils/snapshots/binutils-@VERSION@.tar.bz2
GCC_URL=https://github.com/openrisc/or1k-gcc/archive/musl-4.9.0.tar.gz
GCC_EXTRACT_DIR=or1k-gcc-musl-4.9.0
GCC_VERSION=or1k-4.9.0

MUSL_GIT_VERSION=master
MUSL_GIT_REPO='git://git.musl-libc.org/musl'
MUSL_VERSION="$MUSL_GIT_VERSION"
MUSL_GIT=yes

LINUX_HEADERS_URL=http://www.kernel.org/pub/linux/kernel/v3.x/linux-3.15.tar.xz
