# shellcheck shell=sh
# vi:et lbr noet sw=2 ts=2 tw=79 wrap
# Copyright 2023 David Rabkin
redo-ifchange \
	./*.do \
	.github/*.yml \
	.github/workflows/*.yml \
	app/* \
	README.adoc

# shellcheck disable=SC1091 # Not following
. base.sh
cmd_exists shellcheck && shellcheck ./*.do app/*
cmd_exists shfmt && shfmt -d ./*.do app/*
cmd_exists typos && typos
cmd_exists vale && vale README.adoc
cmd_exists yamllint && yamllint .github/*.yml .github/workflows/*.yml
