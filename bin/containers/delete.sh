#!/bin/bash
set -Eeo pipefail;
################################################################################
##      Copyright (C) 2020        Alejandro Colomar Andrés                    ##
##      SPDX-License-Identifier:  GPL-2.0-only                                ##
################################################################################
##
## Delete stack
## ============
##
################################################################################


################################################################################
##	source								      ##
################################################################################
.	/usr/local/lib/libalx/sh/sysexits.sh;

.	etc/www/config.sh;


################################################################################
##	definitions							      ##
################################################################################
ARGC=2;


################################################################################
##	functions							      ##
################################################################################


################################################################################
##	main								      ##
################################################################################
function main()
{
	local	mode="$1";
	local	stability="$2";
	local	project="${WWW_PROJECT}";
	local	stack="${project}-${stability}";

	/usr/local/libexec/libalx/stack_delete.sh	"${mode}" "${stack}";
}


################################################################################
##	run								      ##
################################################################################
argc=$#;
if [ ${argc} -ne ${ARGC} ]; then
	echo >&2							\
'Usage: ./bin/containers/delete mode stack_stability
Mode:
	kubernetes
	openshift
	swarm
Stack stability:
	A suffix string that will be appended
	to the project name to create the stack name.
	Usually, it should be one of the following:
	"exp", "rc", or "stable".';
	exit	${EX_USAGE};
fi

main	"$1" "$2";


################################################################################
##	end of file							      ##
################################################################################
