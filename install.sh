#!/usr/bin/env bash
# Authors: Baibhav Anand Jha
# Documentation: git.io/domainchecker

if [ "$(id -u)" != "0" ]; then
    echo "Run it as root"

else
	if [ "$1" = "--install" ] ; then
		chmod 777 dac
		cp dac /usr/local/bin
		echo "Installation Successful"

	elif [ "$1" = "--uninstall" ] ; then
		rm -f /usr/local/bin/dac
		echo "Uninstallation Successful"
	else
		echo "usage: bash install.sh --install | --uninstall"
	fi			
fi
