# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DISTUTILS_SINGLE_IMPL=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

UVER=
UREV=2

inherit distutils-r1 ubuntu-versionator

DESCRIPTION="Copy of the 'imp' module that was removed in Python 3.12"
HOMEPAGE="https://github.com/encukou/zombie-imp"

LICENSE="PSF-2.4"
SLOT="0"
KEYWORDS="amd64"
RESTRICT="test"

DEPEND="${RDEPEND}"

S="${WORKDIR}/${PN#python-}-${PV}"
