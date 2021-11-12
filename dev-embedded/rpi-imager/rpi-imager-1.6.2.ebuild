EAPI=8

inherit cmake

DESCRIPTION="Program to image a raspberry pi."
HOMEPAGE="https://github.com/raspberrypi/rpi-imager"
SRC_URI="https://github.com/raspberrypi/rpi-imager/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="apache-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-arch/libarchive
	dev-qt/qtdbus
	dev-qt/qtnetwork
	dev-qt/qtcore
	dev-qt/qtdeclarative
	dev-qt/qtsvg
	dev-qt/qtconcurrent
	dev-qt/qtquickcontrols2
	net-misc/curl
	"
BDEPEND="
	${RDEPEND}
	dev-util/cmake
"

src_configure () {
	local mycmakeargs=(
	)
	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

src_install() {
	cmake_src_install
}

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
