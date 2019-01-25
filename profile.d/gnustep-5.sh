#!/usr/bin/env sh
# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# Test for an interactive shell
case $- in
	*i*)
	;;
	*)
		return
	;;
esac
	
GNUSTEP_SYSTEM_TOOLS=""/usr/bin

if [ -x ${GNUSTEP_SYSTEM_TOOLS}/make_services ]; then
    ${GNUSTEP_SYSTEM_TOOLS}/make_services
fi
