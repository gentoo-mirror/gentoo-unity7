# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
GNOME2_EAUTORECONF="yes"

UVER=
UREV=0ubuntu1

inherit ubuntu-versionator gnome2 vala

DESCRIPTION="The greeter (login screen) application for Unity. It is implemented as a LightDM greeter."
HOMEPAGE="https://launchpad.net/unity-greeter"
SRC_URI="${UURL}-${UREV}.tar.xz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
IUSE="+battery +networkmanager nls +sound"
RESTRICT="test"

COMMON_DEPEND="
	>=dev-libs/ido-13.10.0:0=
	>=dev-libs/libindicator-0.4.90:3
	>=media-libs/libcanberra-gtk3-0.2
	>=unity-base/unity-settings-daemon-15.04.1
	>=x11-libs/gtk+-3.16.2:3
	>=x11-misc/lightdm-1.20.0[vala]
"
RDEPEND="${COMMON_DEPEND}
	>=dev-libs/atk-1.12.4
	>=dev-libs/glib-2.43.92:2
	gnome-base/dconf
	sys-apps/systemd
	>=sys-libs/glibc-2.34
	unity-indicators/indicator-application
	unity-indicators/indicator-datetime
	unity-indicators/indicator-keyboard
	unity-indicators/indicator-session
	x11-apps/xhost
	x11-apps/xrandr
	>=x11-libs/cairo-1.10.0[glib]
	>=x11-libs/gdk-pixbuf-2.22.0:2
	x11-libs/libX11
	x11-libs/libXext
	>=x11-libs/pango-1.14.0

	battery? ( unity-indicators/indicator-power )
	networkmanager? ( gnome-extra/nm-applet )
	sound? ( unity-indicators/indicator-sound )
"
DEPEND="${COMMON_DEPEND}
	app-accessibility/at-spi2-core:2
	>=app-eselect/eselect-lightdm-0.1
	gnome-base/gnome-common
	gnome-base/gnome-desktop:3=
	|| (
		media-fonts/fonts-ubuntu
		media-fonts/ubuntu-font-family
	)
	media-libs/freetype:2
	sys-apps/dbus[X]
	x11-libs/pixman
	x11-themes/humanity-icon-theme

	$(vala_depend)
"

S="${WORKDIR}/${PN}-24.10.1"

PATCHES=(
	"${FILESDIR}"/environment-variables.patch # Import DISPLAY and XDG_SESSION_CLASS1, set XDG_CURRENT_DESKTOP
)

src_prepare() {
	use battery || sed -i \
		-e "s/ indicator-power//" \
		src/unity-greeter.vala || die

	use networkmanager || sed -i \
		-e "/command_line_async (\"nm-applet\")/d" \
		src/unity-greeter.vala || die

	if use sound; then
		sed -i \
			-e "s/\"system-ready\"/\"dialog-question\"/" \
			src/unity-greeter.vala || die
	else
		sed -i \
			-e "s/ indicator-sound//" \
			src/unity-greeter.vala || die
	fi

	# Patch 'at-spi-bus-launcher' path #
	sed -i \
		-e "s:/usr/lib/at-spi2-core/at-spi-bus-launcher:/usr/libexec/at-spi-bus-launcher:" \
		"${S}"/src/unity-greeter.vala || die

	# Disable all language files as they can be incomplete #
	#  due to being provided by Ubuntu's language-pack packages #
	> po/LINGUAS

	ubuntu-versionator_src_prepare
}

src_configure() {
	local myeconfargs=(
		$(use_enable nls)
	)
	econf "${myeconfargs[@]}"
}

src_install() {
	default

	local \
		gschema="10_unity-greeter.gschema.override" \
		gschema_dir="/usr/share/glib-2.0/schemas"

	insinto "${gschema_dir}"
	newins "${FILESDIR}"/${PN}.gsettings-override \
		"${gschema}"

	insinto /usr/share/${PN}
	newins "${FILESDIR}/branding/gentoo_logo.png" logo.png
	newins "${FILESDIR}/branding/gentoo_cof.png" cof.png # Gentoo logo for multi monitor usage

	use sound && ( sed -i \
		-e "/play-ready-sound/d" \
		"${ED}${gschema_dir}/${gschema}" || die )

	# Remove schema override if it's not used #
	use sound && ( sed -i \
		-e "/com.canonical.unity-greeter:unity-greeter/,+1 d" \
		"${ED}${gschema_dir}/${gschema}" || die )

	# Install polkit privileges config #
	insinto /var/lib/polkit-1/localauthority/10-vendor.d
	doins debian/${PN}.pkla
	fowners root:polkitd /var/lib/polkit-1/localauthority/10-vendor.d/${PN}.pkla

	insinto /usr/share/polkit-1/rules.d
	newins debian/01-${PN}.rules 01-${PN}.rules || die

	find "${ED}" -name '*.la' -delete || die
}

pkg_postinst() {
	elog "Setting '${PN}' as default greeter of LightDM."
	"${EROOT}"/usr/bin/eselect lightdm set unity-greeter

	ubuntu-versionator_pkg_postinst
}
