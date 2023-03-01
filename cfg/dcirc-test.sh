# shellcheck shell=sh
# vi:et lbr noet sw=2 ts=2 tw=79 wrap
# Copyright 2023 David Rabkin
# Test configurations for dci-openshift-app-agent. The file should be sourced
# to the shell before dci-openshift-app-agent run. You have to export three
# additional variables:
#  export \
#  	DCI_API_SECRET='' \
#  	DCI_CLIENT_ID='' \
#  	KUBECONFIG=''
# Probably, DCI_TEAM_NAME should be redefined.
XDG_RUNTIME_DIR=/run/user/"$(id -u)"
export \
	DCI_CS_URL=https://api.distributed-ci.io \
	DCI_TEAM_NAME=Foo\ Bar \
	PATH=/usr/local/bin:"$PATH" \
	XDG_RUNTIME_DIR
