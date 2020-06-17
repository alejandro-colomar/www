#!/bin/bash -x
##	./bin/deploy/delete_stack.sh	"<stability>"
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
source	lib/libalx/sh/sysexits.sh;

source	etc/www/config.sh;


################################################################################
##	definitions							      ##
################################################################################
ARGC=1;


################################################################################
##	functions							      ##
################################################################################
function delete_stack()
{
	local	stability="$1";
	local	stack_name="${WWW_STACK_BASENAME}_${stability}";

	docker stack rm "${stack_name}";
}


################################################################################
##	main								      ##
################################################################################
function main()
{

	delete_stack	"$1";
}


################################################################################
##	run								      ##
################################################################################
argc=$#;
if [ ${argc} -ne ${ARGC} ]; then
	echo	"Illegal number of parameters (Requires ${ARGC})";
	exit	${EX_USAGE};
fi

main	"$1";


################################################################################
##	end of file							      ##
################################################################################
