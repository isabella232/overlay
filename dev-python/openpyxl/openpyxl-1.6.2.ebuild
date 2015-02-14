# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} )

inherit distutils-r1 vcs-snapshot

DESCRIPTION="Pure python reader and writer of Excel OpenXML files"
HOMEPAGE="http://bitbucket.org/ericgazoni/openpyxl/wiki/Home"
SRC_URI="https://bitbucket.org/ericgazoni/openpyxl/get/${PV}.tar.bz2 -> ${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="test"

RDEPEND=""
DEPEND="test? ( dev-python/nose[${PYTHON_USEDEP}] )"

# Upstream:
# Openpyxl supports python (even if some tests can fail on 2.4) from 2.4 to 3.2.
RESTRICT="test"

python_test() {
	esetup.py test
}
