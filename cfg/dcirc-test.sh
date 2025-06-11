# shellcheck shell=sh
# vi:et lbr noet sw=2 ts=2 tw=79 wrap
# SPDX-FileCopyrightText: 2023-2025 David Rabkin
# SPDX-License-Identifier: 0BSD
#
# Test configurations for dci-openshift-app-agent. The file should be sourced
# to the shell before dci-openshift-app-agent run. You have to export three
# additional variables:
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
