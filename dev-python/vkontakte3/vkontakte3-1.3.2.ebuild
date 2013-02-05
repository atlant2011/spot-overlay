# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/pdfrw/pdfrw-0.1.ebuild,v 1.1 2013/01/22 16:34:23 floppym Exp $

EAPI=5

PYTHON_COMPAT=( python{3_1,3_2,3_3})

inherit distutils-r1
MY_P="master"
DESCRIPTION="Vkontakte API library"
HOMEPAGE="https://github.com/pashazz/vkontakte"
SRC_URI="https://github.com/pashazz/vkontakte/archive/${MY_P}.zip"

LICENSE="AS IS"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""


S="${WORKDIR}/vkontakte-${MY_P}"
