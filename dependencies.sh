#!/bin/bash
# Installs dependencies for Debian, Ubuntu, or Fedora

distro=`grep '^ID=' /etc/os-release | sed -e 's/.*=//g'`
version=`grep 'VERSION_ID=' /etc/os-release | sed -e 's/"$//g' -e 's/.*"//g'`

if [[ "$distro" == "debian" ]]; then
	# TODO: FIXME
	apt-get update
	# Install Debian dependencies
	#apt-get -y golang-bin golint
elif [[ "$distro" == "fedora" ]]; then
	# Install Fedora dependencies
	dnf -y install golang-bin golint
elif [[ "$distro" == "ubuntu" ]]; then
	# TODO: FIXME
	apt-get update
	# Install Ubuntu dependencies
	#if [[ "$version" == "14.04" ]]; then
	#	apt-get -y install golang-bin golint
	#elif [[ "$version" == "16.04" || "$version" == "18.04" || "$version" == "19.04" ]]; then
	#	apt-get -y install golang-bin golint
	#else
	#	echo "Unsupported version of Ubuntu: $version"
	#fi
fi
