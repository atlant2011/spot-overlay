# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{2_5,2_6,2_7})

inherit distutils-r1

DESCRIPTION="vk.com (aka vkontakte.ru) API wrapper"
HOMEPAGE="http://bitbucket.org/kmike/vkontakte/"
SRC_URI="mirror://pypi/v/${PN}/${P}.tar.gz"

LICENSE="AS IS"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
