# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python{3_1,3_2,3_3})

inherit distutils-r1
MY_P="master"
DESCRIPTION="vk.com (aka vkontakte.ru) API wrapper for python 3"
HOMEPAGE="https://github.com/pashazz/vkontakte"
SRC_URI="https://github.com/pashazz/vkontakte/archive/${MY_P}.zip"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""


S="${WORKDIR}/vkontakte-${MY_P}"
