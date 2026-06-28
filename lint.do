# shellcheck shell=sh
# vi: lbr noet sw=2 ts=2 tw=79 wrap
# SPDX-FileCopyrightText: 2023-2026 David Rabkin
# SPDX-License-Identifier: 0BSD
# Variable appears unused and file not following:
#  shellcheck disable=SC2034,SC1090
redo-ifchange \
	./.github/*.yml \
	./.github/workflows/*.yml \
	./*.do \
	./app/* \
	./cfg/* \
	./README.adoc

readonly \
	BASE_APP_VERSION=0.9.20260629 \
	BSH=/usr/local/bin/base.sh
[ -r "$BSH" ] || {
	printf >&2 'Install Shellbase.\n'
	exit 1
}
set -- "$@" --quiet

. "$BSH"
cmd_exists actionlint && actionlint
cmd_exists reuse && reuse lint
cmd_exists shellcheck && shellcheck ./*.do ./app/* ./cfg/*.sh
cmd_exists shfmt && shfmt -d ./*.do ./app/* ./cfg/*.sh
cmd_exists typos && typos
cmd_exists vale && {
	vale sync
	vale ./README.adoc
}
cmd_exists yamllint &&
	yamllint \
		./.github/*.yml \
		./.github/workflows/*.yml \
		./cfg/*.yml

# Gracefully handle missing last tool without failing the script.
:
