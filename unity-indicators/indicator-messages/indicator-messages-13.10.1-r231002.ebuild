# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
GNOME2_EAUTORECONF="yes"
GNOME2_LA_PUNT="yes"
PYTHON_COMPAT=( python3_{10..12} )

UVER=+18.10.20180918
UREV=0ubuntu5

inherit gnome2 python-single-r1 ubuntu-versionator vala

DESCRIPTION="Indicator that collects messages that need a response used by the Unity7 user interface"
HOMEPAGE="https://launchpad.net/indicator-messages"
SRC_URI="${SRC_URI} ${UURL}-${UREV}.diff.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc test"
REQUIRED_USE="test? ( ${PYTHON_REQUIRED_USE} )"
RESTRICT="!test? ( test )"

COMMON_DEPEND="
	>=dev-libs/gobject-introspection-0.9.12
	>=sys-apps/accountsservice-0.6.8
"
RDEPEND="${COMMON_DEPEND}
	>=dev-libs/glib-2.37.3:2
	dev-libs/libindicator:3
	gnome-base/dconf
	>=sys-libs/glibc-2.4
"
DEPEND="${COMMON_DEPEND}
	gnome-base/gnome-common
	sys-apps/systemd

	doc? ( dev-util/gtk-doc )
	test? (
		dev-cpp/gtest
		dev-util/dbus-test-runner

		${PYTHON_DEPS}
		$(python_gen_cond_dep 'dev-python/python-dbusmock[${PYTHON_USEDEP}]')
	)

	$(vala_depend)
"
BDEPEND="dev-util/intltool"

S="${WORKDIR}"

src_prepare() {
	# Don't try to find test dep #
	use test || sed -i "/DBUSTEST/d" configure.ac || die

	ubuntu-versionator_src_prepare
}

src_configure() {
	local mygnome2args=(
		$(use_enable doc gtk-doc)
		$(use_enable test tests)
	)
	gnome2_src_configure "${mygnome2args[@]}"
}
