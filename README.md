# Gento [![linters](https://github.com/rdavid/gento/actions/workflows/lint.yml/badge.svg)](https://github.com/rdavid/gento/actions/workflows/lint.yml) [![hits of code](https://hitsofcode.com/github/rdavid/gento?branch=master&label=hits%20of%20code)](https://hitsofcode.com/view/github/rdavid/gento?branch=master) [![release)](https://img.shields.io/github/v/release/rdavid/gento?color=blue&label=%20&logo=semver&logoColor=white&style=flat)](https://github.com/rdavid/gento/releases) [![red hat](https://img.shields.io/badge/red%20hat---?color=gray&logo=redhat&logoColor=red&style=flat)](https://www.redhat.com) [![openshift](https://img.shields.io/badge/openshift---?color=gray&logo=redhatopenshift&logoColor=red&style=flat)](https://www.redhat.com/en/technologies/cloud-computing/openshift) [![license](https://img.shields.io/github/license/rdavid/gento?color=blue&labelColor=gray&logo=freebsd&logoColor=lightgray&style=flat)](https://github.com/rdavid/gento/blob/master/LICENSE)
`gento` enables Cloud-Native Applications and Operators in OpenShift using Red Hat Distributed CI service.

* [About](#about)
* [Install](#install)
* [License](#license)

## About
Hello, I'm [David Rabkin](http://cv.rabkin.co.il). `gento` stands for an aGent OpenShift.

## Install
The artifact is a single executable POSIX shell [script
file](https://github.com/rdavid/gento/blob/master/app/gento). Install the file
from released version. Some OS demands administrative rights to
install to `/usr/local/bin`, use `sudo` or `doas` before `tar`:
```sh
REL=0.9.20230224
SRC=https://github.com/rdavid/gento/archive/refs/tags/v$REL.tar.gz
curl --location --silent $SRC |
	tar \
		--directory /usr/local/bin \
		--extract \
		--gzip \
		--strip-components=2 \
		gento-$REL/app/gento
```
To install `gento` with all dependencies run `install` as `root` user, only
RHEL8 is supported:
```sh
REL=0.9.20230224
SRC=https://github.com/rdavid/gento/archive/refs/tags/v$REL.tar.gz
sudo eval "$(
	curl --location --silent $SRC |
		tar \
			--extract \
			--gzip \
			--to-stdout \
			gento-$REL/app/install
)"
```
Run `gento` as `dci-openshift-app-agent` user, the parameter is a CNF name, a
relative sidecar settings file should be presented. Make sure `/usr/local/bin`
is in `dci-openshift-app-agent` user's `PATH`.
```sh
sudo su - dci-openshift-app-agent
gento settings-cnf-name.yml
```

## License
`gento` is copyright [David Rabkin](http://cv.rabkin.co.il) and available
under a
[Zero-Clause BSD license](https://github.com/rdavid/gento/blob/master/LICENSE).
