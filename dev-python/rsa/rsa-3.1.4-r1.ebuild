# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{3,4} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Pure-Python RSA implementation"
HOMEPAGE="http://stuvel.eu/rsa http://pypi.python.org/pypi/rsa"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE="test"

RDEPEND="
	>=dev-python/pyasn1-0.1.3[${PYTHON_USEDEP}]
	"
DEPEND="${RDEPEND}
	>=dev-python/setuptools-0.6.10[${PYTHON_USEDEP}]
	test? (
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/unittest2[${PYTHON_USEDEP}]
		)
	"

python_test() {
	nosetests || die
}
