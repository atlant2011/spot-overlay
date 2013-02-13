# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit eutils subversion

DESCRIPTION="Double Commander is a cross platform open source file manager with two panels side by side. It is inspired by Total Commander and features some new ideas."
HOMEPAGE="http://doublecmd.sourceforge.net/"
ESVN_REPO_URI="https://doublecmd.svn.sourceforge.net/svnroot/doublecmd/branches/0.5/"

LICENSE="GPL-2 LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gtk2 qt4"

RDEPEND="
	>=dev-lang/fpc-2.6
	>=dev-lang/lazarus-1.0
	qt4? (
	    x11-libs/qt-gui:4
	    x11-libs/qt4pas
	    )
	gtk2? ( x11-libs/gtk+ )"
DEPEND="${RDEPEND}"

REQUIRED_USE="^^ ( gtk2 qt4 )"

src_prepare() {
	epatch "${FILESDIR}/${P}-uGlobsPaths.pas.patch"
}

src_compile() {
	mkdir  ${WORKDIR}/../homedir/.lazarus
	cp ${FILESDIR}/environmentoptions.xml ${WORKDIR}/../homedir/.lazarus/
	./build.sh all qt || die
}

src_install() {
	into /usr/
	dobin doublecmd
	dodir /usr/share/doublecmd
	insinto /usr/share/doublecmd
	doins -r language pixmaps
}
