FROM registry.access.redhat.com/ubi8/ubi:8.7
LABEL maintainer=David\ Rabkin\ <david@rabkin.co.il>
ENV \
	USER=dci-openshift-app-agent
COPY LICENSE /licenses/LICENSE
RUN \
	dnf update \
		--assumeyes \
		--disableplugin=subscription-manager \
		--enablerepo=rhel-8-for-x86_64-appstream-rpms \
		--enablerepo=rhel-8-for-x86_64-baseos-rpms \
	&& dnf install \
		--assumeyes \
		https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
		https://packages.distributed-ci.io/dci-release.el8.noarch.rpm \
	&& rm --force --recursive /var/cache/yum \
	&& dnf install --assumeyes --disableplugin=subscription-manager \
		bash-4.4.20 \
		findutils-4.6.0 \
		shadow-utils \
	&& dnf clean all --disableplugin=subscription-manager
USER "$USER"
WORKDIR /home/"$USER"
COPY \
	--chown="$USER":"$USER" \
	. .
