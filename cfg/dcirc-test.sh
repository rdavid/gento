# shellcheck shell=sh
# vi: lbr noet sw=2 ts=2 tw=79 wrap
# SPDX-FileCopyrightText: 2023-2026 David Rabkin
# SPDX-License-Identifier: 0BSD
#
# Provides test configurations for dci-openshift-app-agent. Source the file
# into the shell before running dci-openshift-app-agent. Also export the
# following variables:
#  export \
#  	DCI_API_SECRET='' \
#  	DCI_CLIENT_ID='' \
#  	DCI_TEAM_NAME='' \
#  	KUBECONFIG=''
XDG_RUNTIME_DIR=/run/user/"$(id -u)"
export \
	DCI_CS_URL=https://api.distributed-ci.io \
	PATH=/usr/local/bin:"$PATH" \
	XDG_RUNTIME_DIR
