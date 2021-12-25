# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

UVER=""
UREV=""

inherit ubuntu-versionator

DESCRIPTION="Language translations pack for Unity7 user interface"
HOMEPAGE="https://translations.launchpad.net/ubuntu"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
#KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-devel/gettext"

setvar() {
	eval "${1//-/_}=( ${2} ${3} ${4} )"
}

#[fnc] [L10N]		[pack]         [pack-gnome]   [ubuntu tag]
setvar af		22.04+20211115 22.04+20211115
setvar am		22.04+20211115 22.04+20211115
setvar an		22.04+20211115 22.04+20211115
setvar ar		22.04+20211115 22.04+20211115
setvar as		22.04+20211115 22.04+20211115
setvar ast		22.04+20211115 22.04+20211115
setvar az		17.10+20171012 17.10+20171012
setvar be		22.04+20211115 22.04+20211115
setvar bg		22.04+20211115 22.04+20211115
setvar bn		22.04+20211115 22.04+20211115
setvar bo		14.10+20140909 14.10+20140909
setvar br		22.04+20211115 22.04+20211115
setvar bs		22.04+20211115 22.04+20211115
setvar ca		22.04+20211115 22.04+20211115
setvar ca-valencia	22.04+20211115 22.04+20211115 ca
setvar cs		22.04+20211115 22.04+20211115
setvar cy		22.04+20211115 22.04+20211115
setvar da		22.04+20211115 22.04+20211115
setvar de		22.04+20211115 22.04+20211115
setvar dv		14.04+20150804 14.04+20150804
setvar dz		22.04+20211115 22.04+20211115
setvar el		22.04+20211115 22.04+20211115
setvar en		22.04+20211115 22.04+20211115
setvar en-AU		22.04+20211115 22.04+20211115 en
setvar en-CA		22.04+20211115 22.04+20211115 en
setvar en-GB		22.04+20211115 22.04+20211115 en
setvar eo		22.04+20211115 22.04+20211115
setvar es		22.04+20211115 22.04+20211115
setvar et		22.04+20211115 22.04+20211115
setvar eu		22.04+20211115 22.04+20211115
setvar fa		22.04+20211115 22.04+20211115
setvar ff		14.04+20150804 14.04+20150804
setvar fi		22.04+20211115 22.04+20211115
setvar fil		14.04+20150804 14.04+20150804
setvar fo		14.04+20150804 14.04+20150804
setvar fr		22.04+20211115 22.04+20211115
setvar fy		14.04+20150804 14.04+20150804
setvar ga		22.04+20211115 22.04+20211115
setvar gd		22.04+20211115 22.04+20211115
setvar gl		22.04+20211115 22.04+20211115
setvar gu		22.04+20211115 22.04+20211115
setvar he		22.04+20211115 22.04+20211115
setvar hi		22.04+20211115 22.04+20211115
setvar hr		22.04+20211115 22.04+20211115
setvar ht		14.04+20150804 14.04+20150804
setvar hu		22.04+20211115 22.04+20211115
setvar hy		14.04+20150804 14.04+20150804
setvar ia		22.04+20211115 22.04+20211115
setvar id		22.04+20211115 22.04+20211115
setvar is		22.04+20211115 22.04+20211115
setvar it		22.04+20211115 22.04+20211115
setvar ja		22.04+20211115 22.04+20211115
setvar ka		17.10+20171012 17.10+20171012
setvar kk		22.04+20211115 22.04+20211115
setvar km		22.04+20211115 22.04+20211115
setvar kn		22.04+20211115 22.04+20211115
setvar ko		22.04+20211115 22.04+20211115
setvar ks		14.04+20150804 14.04+20150804
setvar ku		22.04+20211115 22.04+20211115
setvar ky		14.04+20150804 14.04+20150804
setvar la		12.04+20130128 12.04+20130128
setvar lb		14.04+20150804 14.04+20150804
setvar lo		14.04+20150804 14.04+20150804
setvar lt		22.04+20211115 22.04+20211115
setvar lv		22.04+20211115 22.04+20211115
setvar mai		18.04+20180423 18.04+20180423
setvar mi		14.04+20150804 14.04+20150804
setvar mk		22.04+20211115 22.04+20211115
setvar ml		22.04+20211115 22.04+20211115
setvar mn		16.04+20160214 16.04+20160214
setvar mr		22.04+20211115 22.04+20211115
setvar ms		22.04+20211115 22.04+20211115
setvar mt		14.04+20150804 14.04+20150804
setvar my		22.04+20211115 22.04+20211115
setvar nb		22.04+20211115 22.04+20211115
setvar ne		22.04+20211115 22.04+20211115
setvar nl		22.04+20211115 22.04+20211115
setvar nn		22.04+20211115 22.04+20211115
setvar nso		14.04+20150804 14.04+20150804
setvar oc		22.04+20211115 22.04+20211115
setvar om		14.04+20150804 14.04+20150804
setvar or		22.04+20211115 22.04+20211115
setvar pa		22.04+20211115 22.04+20211115
setvar pl		22.04+20211115 22.04+20211115
setvar ps		14.04+20150804 14.04+20150804
setvar pt		22.04+20211115 22.04+20211115
setvar pt-BR		22.04+20211115 22.04+20211115 pt
setvar ro		22.04+20211115 22.04+20211115
setvar ru		22.04+20211115 22.04+20211115
setvar rw		14.04+20150804 14.04+20150804
setvar sa		14.04+20150804 14.04+20150804
setvar sc		14.04+20150804 14.04+20150804
setvar sd		14.04+20150804 14.04+20150804
setvar si		18.10+20180731 18.10+20180731
setvar sk		22.04+20211115 22.04+20211115
setvar sl		22.04+20211115 22.04+20211115
setvar so		14.04+20150804 13.04+20130418
setvar sq		22.04+20211115 22.04+20211115
setvar sr		22.04+20211115 22.04+20211115
setvar sr-Latn		22.04+20211115 22.04+20211115 sr
setvar st		14.04+20150804 14.04+20150804
setvar sv		22.04+20211115 22.04+20211115
setvar sw		14.04+20150804 14.04+20150804
setvar ta		22.04+20211115 22.04+20211115
setvar te		22.04+20211115 22.04+20211115
setvar tg		22.04+20211115 22.04+20211115
setvar th		22.04+20211115 22.04+20211115
setvar ti		14.04+20150804 14.04+20150804
setvar tk		14.04+20150804 14.04+20150804
setvar tl		14.04+20150804 14.04+20150804
setvar tr		22.04+20211115 22.04+20211115
setvar ts		14.04+20150804 14.04+20150804
setvar tt		14.04+20150804 14.04+20150804
setvar ug		22.04+20211115 22.04+20211115
setvar uk		22.04+20211115 22.04+20211115
setvar ur		14.04+20150804 14.04+20150804
setvar uz		16.04+20160214 16.04+20160214
setvar ve		14.04+20150804 14.04+20150804
setvar vi		22.04+20211115 22.04+20211115
setvar xh		17.10+20171012 17.10+20171012
setvar yi		14.04+20150804 14.04+20150804
setvar yo		14.04+20150804 14.04+20150804
setvar zh-CN		22.04+20211115 22.04+20211115 zh-hans
setvar zh-TW		22.04+20211115 22.04+20211115 zh-hant
setvar zu		14.04+20150804 14.04+20150804

# Only valid IETF language tags that are listed in
#  /usr/portage/profiles/desc/l10n.desc are supported:
IUSE_L10N="af am an ar as ast az be bg bn bo br bs ca ca-valencia cs cy
da de dv dz el en en-AU en-CA en-GB eo es et eu fa ff fi fil fo fr fy ga
gd gl gu he hi hr ht hu hy ia id is it ja ka kk km kn ko ks ku ky la lb
lo lt lv mai mi mk ml mn mr ms mt my nb ne nl nn nso oc om or pa pl ps
pt pt-BR ro ru rw sa sc sd si sk sl so sq sr sr-Latn st sv sw ta te tg
th ti tk tl tr ts tt ug uk ur uz ve vi xh yi yo zh-CN zh-TW zu"

# IUSE and SRC_URI generator:
UURL="http://archive.ubuntu.com/ubuntu/pool/main/l"
for use_flag in ${IUSE_L10N}; do
	IUSE+=" l10n_${use_flag}"
	use_flag=${use_flag//-/_}
	eval "tag=\${$use_flag[2]}"
	[[ -z ${tag} ]] && tag=${use_flag}
	eval "ver=\${$use_flag[0]}"
	eval "ver_gnome=\${$use_flag[1]}"
	compress="xz"
	[[ ${ver//[!0-9]} -lt 161000000000 ]] \
		&& compress="gz"
	SRC_URI+=" l10n_${use_flag//_/-}? (
		${UURL}/language-pack-${tag}-base/language-pack-${tag}-base_${ver}.tar.${compress}
		${UURL}/language-pack-gnome-${tag}-base/language-pack-gnome-${tag}-base_${ver_gnome}.tar.${compress} )"
done

REQUIRED_USE="|| ( ${IUSE} )"
IUSE="+branding ${IUSE/l10n_en/+l10n_en}"

S="${WORKDIR}"

_progress_counter=0
_progress_indicator() {
	local -a arr=( "|" "/" "-" "\\" )

	[[ ${_progress_counter} -eq 4 ]] && _progress_counter=0
	printf "\b\b %s" "${arr[${_progress_counter}]}"
	_progress_counter=$((_progress_counter + 1))
}

src_install() {
	# sharing panel msgids
	local -a sh_msgids=(
		"No networks selected for sharing"
		"service is enabled"
		"service is disabled"
		"service is enabled"
		"service is active"
		"Choose a Folder"
		"File Sharing allows you to share your Public folder with others on your "
		"When remote login is enabled, remote users can connect using the Secure "
		"Screen sharing allows remote users to view or control your screen by "
		"Copy"
		"Sharing"
		"_Computer Name"
		"_File Sharing"
		"_Screen Sharing"
		"_Media Sharing"
		"_Remote Login"
		"Some services are disabled because of no network access."
		"File Sharing"
		"_Require Password"
		"Remote Login"
		"Screen Sharing"
		"_Allow connections to control the screen"
		"_Password:"
		"_Show Password"
		"Access Options"
		"_New connections must ask for access"
		"_Require a password"
		"Media Sharing"
		"Share music, photos and videos over the network."
		"Folders"
		"Control what you want to share with others"
		"preferences-system-sharing"
		"share;sharing;ssh;host;name;remote;desktop;media;audio;video;pictures;photos;"
		"Networks"
		"Enable or disable remote login"
		"Authentication is required to enable or disable remote login"
	)

	# langselector panel msgids
	local -a ls_msgids=(
		"Language Support"
		"Configure multiple and native language support on your system"
		"Login _Screen"
		"_Language"
		"_Formats"
		"Login settings are used by all users when logging into the system"
		"Your session needs to be restarted for changes to take effect"
		"Restart Now"
		"Formats"
		"_Done"
		"_Cancel"
		"Preview"
		"Dates"
		"Times"
		"Dates & Times"
		"Numbers"
		"Measurement"
		"Paper"
		"measurement format"
		"More…"
		"No languages found"
		"No regions found"
	)

	# online-accounts desktop launcher msgids
	local -a oa_msgids=(
		"Online Accounts"
		"Connect to your online accounts and decide what to use them for"
	)

	# Unity help desktop launcher msgids
	local -a is_msgids=(
		"Unity Help"
		"Get help with Unity"
	)

	local \
		pofile msgid gcc_src ls_src x ylp_src \
		u_po="unity.po" \
		ucc_po="unity-control-center.po" \
		gcc_po="gnome-control-center-2.0.po" \
		ls_po="language-selector.po" \
		is_po="indicator-session.po" \
		ylp_po="yelp.po" \
		newline=$'\n'

	# Remove all translations except those we need
	find "${S}" -type f \
		! -name ${gcc_po} \
		! -name 'gnome-session-3.0.po' \
		! -name 'indicator-*' \
		! -name ${ls_po} \
		! -name 'libdbusmenu.po' \
		! -name 'ubuntu-help.po' \
		! -name 'unity*' \
		! -name ${ylp_po} \
			-delete || die
	find "${S}" -mindepth 1 -type d -empty -delete || die

	# Add translations for activity-log-manager
	unpack "${FILESDIR}"/activity-log-manager-translations-artful.tar.xz 1>/dev/null

	for x in "${S}"/language-pack-gnome-*-base/data/*; do
		cp "${S}"/po/"${x##*data/}".po "${x}"/LC_MESSAGES/activity-log-manager.po 2>/dev/null
	done
	rm -r "${S}"/po

	# Add translations for session-shortcuts
	unpack "${FILESDIR}"/session-shortcuts-translations-artful.tar.xz 1>/dev/null

	for x in "${S}"/language-pack-gnome-*-base/data/*; do
		cp "${S}"/po/"${x##*data/}".po "${x}"/LC_MESSAGES/session-shortcuts.po 2>/dev/null
	done
	rm -r "${S}"/po

	printf "%s  " "Processing translation files"
	_progress_indicator

	for pofile in $( \
		find "${S}" -type f -name "*.po" \
			! -name "${gcc_po}" \
			! -name "${ls_po}" \
			! -name "${ylp_po}" \
	); do
		if [[ ${pofile##*/} == ${ucc_po} ]]; then
			_progress_indicator

			# Add translations for sharing panel and online-accounts desktop launcher
			sed -i -e "/\"Sharing\"/,+1 d" "${pofile}" # remove old identical msgid
			gcc_src=${pofile/${ucc_po}/${gcc_po}}
			for msgid in "${sh_msgids[@]}" "${oa_msgids[@]}"; do
				if ! grep -q "^\(msgid\|msgctxt\)\s\"${msgid}\"$" "${pofile}"; then
					msgid="$(awk "/^(msgid\s|msgctxt\s|)\"${msgid}\"\$/ { p = 1 } p { print } /^\$/ { p = 0 }" "${gcc_src}" 2>/dev/null)"
					case ${msgid:0:1} in
						m)
							echo "${msgid}" >> "${pofile}"
							;;
						\")
							echo "msgid \"\"${newline}${msgid}" >> "${pofile}"
							;;
					esac
				fi
			done

			_progress_indicator

			# Add translations for langselector panel
			ls_src=${pofile/${ucc_po}/${ls_po}}
			ls_src=${ls_src/gnome-}
			for msgid in "${ls_msgids[@]}"; do
				if ! grep -q "^\(msgid\|msgctxt\)\s\"${msgid}\"$" "${pofile}"; then
					echo "$(awk "/^(msgid|msgctxt)\s\"${msgid}\"\$/ { p = 1 } p { print } /^\$/ { p = 0 }" "${gcc_src}" "${ls_src}" 2>/dev/null)" \
						>> "${pofile}"
				fi
			done
			rm "${gcc_src}" "${ls_src}" 2>/dev/null

			# Add Version
			x="$(portageq 'unity-base/unity' best_version | cut -d "-" -f 3) (${URELEASE})"
			sed -i -e "s/Version %s/Version ${x}/" -e "/${x}/{n;s/%s/${x}/;}" "${pofile}"
		fi

		# Add translations for Unity help desktop launcher
		if [[ ${pofile##*/} == ${is_po} ]]; then
			_progress_indicator

			ylp_src=${pofile/${is_po}/${ylp_po}}
			sed -i -e "s/GNOME/Unity/g" "${ylp_src}"
			for msgid in "${is_msgids[@]}"; do
				if ! grep -q "^\(msgid\|msgctxt\)\s\"${msgid}\"$" "${pofile}"; then
					echo "$(awk "/^(msgid|msgctxt)\s\"${msgid}\"\$/ { p = 1 } p { print } /^\$/ { p = 0 }" "${ylp_src}" 2>/dev/null)" \
						>> "${pofile}"
				fi
			done
			rm "${ylp_src}" 2>/dev/null
		fi

		# Rename Ubuntu Desktop
		use branding && [[ ${pofile##*/} == ${u_po} ]] && sed -i -e "s/Ubuntu Desktop/Gentoo Unity⁷ Desktop/" -e "/Unity⁷/{n;s/Ubuntu/Gentoo Unity⁷/;}" "${pofile}"

		msgfmt -o "${pofile%.po}.mo" "${pofile}"
		rm "${pofile}"
	done

	insinto /usr/share/locale
	doins -r "${S}"/language-pack-*-base/data/*

	printf "\b\b%s\n" "... done!"
}