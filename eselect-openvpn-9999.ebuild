EAPI="7"
inherit eutils git-r3

DESCRIPTION="eselect module for openvpn config files"
HOMEPAGE="https://github.com/uxter/openvpn.eselect"
EGIT_REPO_URI="https://github.com/uxter/openvpn.eselect"

LICENSE="ISC"
SLOT="0"
KEYWORDS="**"
IUSE=""
RDEPEND="net-vpn/openvpn"

src_install() {
	mkdir -pv "/opt/openvpn/config"
	insinto "/usr/share/eselect/modules"
	newins "${WORKDIR}/${PF}/openvpn.eselect" openvpn.eselect || die
}

pkg_postinst() {
	elog "Created directory /opt/openvpn/config"
	elog "Put your .ovpn files in there and run 'eselect openvpn list' to show them"
}
