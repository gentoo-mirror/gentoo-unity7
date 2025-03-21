# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

UVER=
UREV=

inherit ubuntu-versionator

DESCRIPTION="Language translations pack for Unity7 user interface"
HOMEPAGE="https://translations.launchpad.net/ubuntu"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

setvar() {
	eval "${1//-/_}=( ${2} ${3} ${4} )"
}

#[fnc] [L10N]		[pack]         [pack-gnome]   [ubuntu tag]
setvar af		25.04+20250319 25.04+20250319
setvar am		25.04+20250122 25.04+20250122
setvar an		25.04+20250122 25.04+20250122
setvar ar		25.04+20250319 25.04+20250319
setvar as		25.04+20250319 25.04+20250319
setvar ast		25.04+20250319 25.04+20250319
setvar az		25.04+20250122 25.04+20250122
setvar be		25.04+20250319 25.04+20250319
setvar bg		25.04+20250319 25.04+20250319
setvar bn		25.04+20250319 25.04+20250319
setvar bo		14.10+20140909 14.10+20140909
setvar br		25.04+20250122 25.04+20250122
setvar bs		25.04+20250319 25.04+20250319
setvar ca		25.04+20250319 25.04+20250319
setvar ca-valencia	25.04+20250319 25.04+20250319 ca
setvar ckb		25.04+20250319 25.04+20250319
setvar cs		25.04+20250319 25.04+20250319
setvar cy		25.04+20250122 25.04+20250122
setvar da		25.04+20250319 25.04+20250319
setvar de		25.04+20250319 25.04+20250319
setvar dv		14.04+20150804 14.04+20150804
setvar dz		25.04+20250122 25.04+20250122
setvar el		25.04+20250319 25.04+20250319
setvar en		25.04+20250319 25.04+20250319
setvar eo		25.04+20250319 25.04+20250319
setvar es		25.04+20250319 25.04+20250319
setvar et		25.04+20250319 25.04+20250319
setvar eu		25.04+20250319 25.04+20250319
setvar fa		25.04+20250319 25.04+20250319
setvar ff		14.04+20150804 14.04+20150804
setvar fi		25.04+20250319 25.04+20250319
setvar fil		14.04+20150804 14.04+20150804
setvar fo		14.04+20150804 14.04+20150804
setvar fr		25.04+20250319 25.04+20250319
setvar fur		25.04+20250319 25.04+20250319
setvar fy		14.04+20150804 14.04+20150804
setvar ga		25.04+20250122 25.04+20250122
setvar gd		25.04+20250319 25.04+20250319
setvar gl		25.04+20250319 25.04+20250319
setvar gu		25.04+20250319 25.04+20250319
setvar he		25.04+20250319 25.04+20250319
setvar hi		25.04+20250319 25.04+20250319
setvar hr		25.04+20250319 25.04+20250319
setvar ht		14.04+20150804 14.04+20150804
setvar hu		25.04+20250319 25.04+20250319
setvar hy		14.04+20150804 14.04+20150804
setvar ia		25.04+20250122 25.04+20250122
setvar id		25.04+20250319 25.04+20250319
setvar is		25.04+20250319 25.04+20250319
setvar it		25.04+20250319 25.04+20250319
setvar ja		25.04+20250319 25.04+20250319
setvar ka		25.04+20250319 25.04+20250319
setvar kab		25.04+20250319 25.04+20250319
setvar kk		25.04+20250319 25.04+20250319
setvar km		25.04+20250319 25.04+20250319
setvar kn		25.04+20250319 25.04+20250319
setvar ko		25.04+20250319 25.04+20250319
setvar ks		14.04+20150804 14.04+20150804
setvar ku		25.04+20250122 25.04+20250122
setvar ky		14.04+20150804 14.04+20150804
setvar lb		14.04+20150804 14.04+20150804
setvar lo		14.04+20150804 14.04+20150804
setvar lt		25.04+20250319 25.04+20250319
setvar lv		25.04+20250319 25.04+20250319
setvar mai		18.04+20180423 18.04+20180423
setvar mi		14.04+20150804 14.04+20150804
setvar mk		25.04+20250122 25.04+20250122
setvar ml		25.04+20250319 25.04+20250319
setvar mn		16.04+20160214 16.04+20160214
setvar mr		25.04+20250319 25.04+20250319
setvar ms		25.04+20250319 25.04+20250319
setvar mt		14.04+20150804 14.04+20150804
setvar my		25.04+20250319 25.04+20250319
setvar nb		25.04+20250319 25.04+20250319
setvar ne		25.04+20250319 25.04+20250319
setvar nl		25.04+20250319 25.04+20250319
setvar nn		25.04+20250319 25.04+20250319
setvar nso		14.04+20150804 14.04+20150804
setvar oc		25.04+20250319 25.04+20250319
setvar om		14.04+20150804 14.04+20150804
setvar or		25.04+20250122 25.04+20250122
setvar pa		25.04+20250319 25.04+20250319
setvar pl		25.04+20250319 25.04+20250319
setvar ps		14.04+20150804 14.04+20150804
setvar pt		25.04+20250319 25.04+20250319
setvar pt-BR		25.04+20250319 25.04+20250319 pt
setvar ro		25.04+20250319 25.04+20250319
setvar ru		25.04+20250319 25.04+20250319
setvar rw		14.04+20150804 14.04+20150804
setvar sa		14.04+20150804 14.04+20150804
setvar sc		14.04+20150804 14.04+20150804
setvar sd		14.04+20150804 14.04+20150804
setvar si		25.04+20250122 25.04+20250122
setvar sk		25.04+20250319 25.04+20250319
setvar sl		25.04+20250319 25.04+20250319
setvar so		14.04+20150804 13.04+20130418
setvar sq		25.04+20250319 25.04+20250319
setvar sr		25.04+20250319 25.04+20250319
setvar sr-Latn		25.04+20250319 25.04+20250319 sr
setvar st		14.04+20150804 14.04+20150804
setvar sv		25.04+20250319 25.04+20250319
setvar sw		14.04+20150804 14.04+20150804
setvar szl		25.04+20250122 25.04+20250122
setvar ta		25.04+20250319 25.04+20250319
setvar te		25.04+20250319 25.04+20250319
setvar tg		25.04+20250122 25.04+20250122
setvar th		25.04+20250319 25.04+20250319
setvar ti		14.04+20150804 14.04+20150804
setvar tk		14.04+20150804 14.04+20150804
setvar tl		14.04+20150804 14.04+20150804
setvar tr		25.04+20250319 25.04+20250319
setvar ts		14.04+20150804 14.04+20150804
setvar tt		14.04+20150804 14.04+20150804
setvar ug		25.04+20250319 25.04+20250319
setvar uk		25.04+20250319 25.04+20250319
setvar ur		14.04+20150804 14.04+20150804
setvar uz		16.04+20160214 16.04+20160214
setvar ve		14.04+20150804 14.04+20150804
setvar vi		25.04+20250319 25.04+20250319
setvar xh		25.04+20250122 25.04+20250122
setvar yi		14.04+20150804 14.04+20150804
setvar yo		14.04+20150804 14.04+20150804
setvar zh-CN		25.04+20250319 25.04+20250319 zh-hans
setvar zh-TW		25.04+20250319 25.04+20250319 zh-hant
setvar zu		14.04+20150804 14.04+20150804
# Add a new line and launch 'gentoo-unity-ver -u' #
#setvar [xy]		none none

# Only valid IETF language tags that are listed in #
# $(portageq get_repo_path / gentoo)/profiles/desc/l10n.desc are supported: #
MY_L10N="af am an ar as ast az be bg bn bo br bs ca ca-valencia ckb cs
cy da de dv dz el en eo es et eu fa ff fi fil fo fr fur fy ga gd gl gu
he hi hr ht hu hy ia id is it ja ka kab kk km kn ko ks ku ky lb lo lt lv
mai mi mk ml mn mr ms mt my nb ne nl nn nso oc om or pa pl ps pt pt-BR
ro ru rw sa sc sd si sk sl so sq sr sr-Latn st sv sw szl ta te tg th ti
tk tl tr ts tt ug uk ur uz ve vi xh yi yo zh-CN zh-TW zu"

UURL="${UURL%/*}"; SRC_URI=""
for flag in ${MY_L10N}; do
	flag=${flag/-/_}
	eval "tag=\${$flag[2]}"
	[[ -z ${tag} ]] && tag=${flag}
	eval "ver=\${$flag[0]}"
	eval "ver_gnome=\${$flag[1]}"
	[[ ${ver//[!0-9]} -lt 161000000000 ]] && compress="gz" || compress="xz"
	flag=${flag/_/-}
	if [[ ${flag} == "en" ]]; then
		SRC_URI+="${UURL}/language-pack-${tag}-base_${ver}.tar.${compress}
			${UURL}/language-pack-gnome-${tag}-base_${ver_gnome}.tar.${compress} "
	else
		IUSE+=" l10n_${flag}"
		SRC_URI+="l10n_${flag}? (
			${UURL}/language-pack-${tag}-base_${ver}.tar.${compress}
			${UURL}/language-pack-gnome-${tag}-base_${ver_gnome}.tar.${compress} ) "
	fi
done

RESTRICT="test"

BDEPEND="sys-devel/gettext"

S="${WORKDIR}"

src_install() {
	# Documentation
	mv language-pack-en-base/COPYING .
	default

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
		ul_po="unity.legacy" \
		ucc_po="unity-control-center.po" \
		uccl_po="unity-control-center.legacy" \
		gcc_po="gnome-control-center-2.0.po" \
		ls_po="language-selector.po" \
		is_po="indicator-session.po" \
		ylp_po="yelp.po" \
		newline=$'\n'

	# Remove all translations except those we need
	find "${S}" -type f \
		! -name ${gcc_po} \
		! -name 'gnome-session-*' \
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
	rm -r "${S}"/po 2>/dev/null

	# Add translations for session-shortcuts
	unpack "${FILESDIR}"/session-shortcuts-translations-artful.tar.xz 1>/dev/null

	for x in "${S}"/language-pack-gnome-*-base/data/*; do
		cp "${S}"/po/"${x##*data/}".po "${x}"/LC_MESSAGES/session-shortcuts.po 2>/dev/null
	done
	rm -r "${S}"/po 2>/dev/null

	# Add legacy translations for Unity
	unpack "${FILESDIR}"/unity-translations-kinetic.tar.xz 1>/dev/null

	for x in "${S}"/language-pack-gnome-*-base/data/*; do
		cp "${S}"/po/"${x##*data/}".po "${x}"/LC_MESSAGES/"${ul_po}" 2>/dev/null
	done
	rm -r "${S}"/po 2>/dev/null

	# Add legacy translations for System Settings
	unpack "${FILESDIR}"/unity-control-center-translations-kinetic.tar.xz 1>/dev/null

	for x in "${S}"/language-pack-gnome-*-base/data/*; do
		cp "${S}"/po/"${x##*data/}".po "${x}"/LC_MESSAGES/"${uccl_po}" 2>/dev/null
	done
	rm -r "${S}"/po 2>/dev/null

	_progress_counter=0
	_progress_indicator() {
		local -a arr=( "|" "/" "-" "\\" )

		[[ ${_progress_counter} -eq 4 ]] && _progress_counter=0
		printf "\b\b %s" "${arr[${_progress_counter}]}"
		_progress_counter=$((_progress_counter + 1))
	}

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

			# Merge legacy translations
			x="${pofile/${ucc_po}/${uccl_po}}"
			if [[ -f ${x} ]]; then
				sed -i -e '/msgid \"\"/,/^$/d' "${x}"
				cat "${x}" >> "${pofile}"
				msguniq --use-first -o "${pofile}" "${pofile}" 2>/dev/null
				rm "${x}"
			fi

			# Add translations for sharing panel and online-accounts desktop launcher
			sed -i -e "/\"Sharing\"/,+1 d" "${pofile}" || die # remove old identical msgid
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
		fi

		# Add translations for Unity help desktop launcher
		ylp_src=${pofile/${is_po}/${ylp_po}}
		if [[ ${pofile##*/} == ${is_po} ]] && [[ -e ${ylp_src} ]]; then
			_progress_indicator

			sed -i -e "s/GNOME/Unity/g" "${ylp_src}" || die
			for msgid in "${is_msgids[@]}"; do
				if ! grep -q "^\(msgid\|msgctxt\)\s\"${msgid}\"$" "${pofile}"; then
					echo "$(awk "/^(msgid|msgctxt)\s\"${msgid}\"\$/ { p = 1 } p { print } /^\$/ { p = 0 }" "${ylp_src}" 2>/dev/null)" \
						>> "${pofile}"
				fi
			done
			rm "${ylp_src}" 2>/dev/null
		fi

		# Process translations for Unity
		if [[ ${pofile##*/} == ${u_po} ]]; then
			_progress_indicator

			# Merge legacy translations
			x="${pofile/${u_po}/${ul_po}}"
			if [[ -f ${x} ]]; then
				sed -i -e '/msgid \"\"/,/^$/d' "${x}"
				cat "${x}" >> "${pofile}"
				msguniq --use-first -o "${pofile}" "${pofile}" 2>/dev/null
				rm "${x}"
			fi

			# Rename Ubuntu Desktop
			sed -i -e "s/Ubuntu Desktop/Gentoo Unity⁷ Desktop/" -e "/Unity⁷/{n;s/Ubuntu/Gentoo Unity⁷/;}" "${pofile}" || die
		fi

		msgfmt -o "${pofile%.po}.mo" "${pofile}"
		rm "${pofile}" 2>/dev/null

		if [[ ${pofile##*/} == "gnome-session-"* ]]; then
			mv "${pofile%.po}.mo" "${pofile%/*}/gnome-session-45.mo"
		fi
	done

	insinto /usr/share/locale
	doins -r "${S}"/language-pack-*-base/data/*

	printf "\b\b%s\n" "... done!"
}
