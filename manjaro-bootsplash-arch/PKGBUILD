pkgbase=bootsplash-themes
pkgname=('bootsplash-theme-manjaro-arch')
pkgver=0.2
pkgrel=2
url="https://lists.freedesktop.org/archives/dri-devel/2017-December/160242.html"
arch=('x86_64')
license=('GPL')

depends=()
builddepends=('imagemagick')
options=('!libtool' '!emptydirs')

source=('bootsplash-packer'
	'bootsplash-manjaro-arch.sh'
	'bootsplash-manjaro-arch.initcpio_install'
	'spinner.gif'
	'arch.png')

sha256sums=('SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP')

build() {
  cd "$srcdir"
  sh ./bootsplash-manjaro-arch.sh
}

package_bootsplash-theme-manjaro-arch() {
  pkgdesc="Bootsplash Theme with Arch logo"
  cd "$srcdir"

  install -Dm644 "$srcdir/bootsplash-manjaro-arch" "$pkgdir/usr/lib/firmware/bootsplash-themes/manjaro-arch/bootsplash"
  install -Dm644 "$srcdir/bootsplash-manjaro-arch.initcpio_install" "$pkgdir/usr/lib/initcpio/install/bootsplash-manjaro-arch"
} 
