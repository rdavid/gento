# Gento [![linters](https://github.com/rdavid/gento/actions/workflows/lint.yml/badge.svg)](https://github.com/rdavid/gento/actions/workflows/lint.yml) [![hits of code](https://hitsofcode.com/github/rdavid/gento?branch=master&label=hits%20of%20code)](https://hitsofcode.com/view/github/rdavid/gento?branch=master) [![red hat](https://img.shields.io/badge/red%20hat---?color=gray&logo=redhat&logoColor=red&style=flat)](https://www.redhat.com) [![license](https://img.shields.io/github/license/rdavid/gento?color=blue&labelColor=gray&logo=freebsd&logoColor=lightgray&style=flat)](https://github.com/rdavid/gento/blob/master/LICENSE)
`gento` enables Cloud-Native Applications and Operators in OpenShift using Red Hat Distributed CI service.

* [About](#about)
* [Install](#install)
* [License](#license)

## About
Hello, I'm [David Rabkin](http://cv.rabkin.co.il). `gento` stands for an aGent OpenShift.

## Install
```sh
git clone git@github.com:rdavid/gento.git
```
- Run `install` as `root` user:
```sh
sudo ./app/install
```
- Run `run` as `dci-openshift-app-agent` user, the parameter is a CNF name, a
relative sidecar settings file should be presented:
```sh
sudo su - dci-openshift-app-agent
./app/run foobar
```

## License
`gento` is copyright [David Rabkin](http://cv.rabkin.co.il) and available
under a
[Zero-Clause BSD license](https://github.com/rdavid/gento/blob/master/LICENSE).
