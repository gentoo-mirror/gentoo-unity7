# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

UVER=
UREV=

inherit ubuntu-versionator

DESCRIPTION="Default audio theme for the Unity"
HOMEPAGE="https://launchpad.net/ubuntu-sounds"
SRC_URI="${UURL}.tar.gz"

LICENSE="CC-BY-SA-3.0"
KEYWORDS="amd64"
SLOT="0"
RESTRICT="binchecks strip test"

src_install() {
	default

	insinto /usr/share/sounds/ubuntu
	doins -r notifications ringtones
}
