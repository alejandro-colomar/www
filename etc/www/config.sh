################################################################################
##      Copyright (C) 2020        Alejandro Colomar Andrés                    ##
##      SPDX-License-Identifier:  BSD-2-Clause                                ##
################################################################################


################################################################################
##	include guard							      ##
################################################################################
if [ -n "${WWW_CONFIG_H}" ]; then
	return;
fi
WWW_CONFIG_H="/etc/www/config.sh included";


################################################################################
##	definitions							      ##
################################################################################
WWW_PORT_EXP=32001;
WWW_PORT_RC=31001;
WWW_PORT_STABLE=30001;
WWW_PROJECT="www";
WWW_STABILITY="stable";	## "stable", "rc", or "exp"
WWW_STACK="${WWW_PROJECT}-${WWW_STABILITY}";
WWW_VERSION="0.30.3";	## tag name or branch name.
WWW_DK_REPO='alejandrocolomar';
WWW_DK_IMG="${WWW_PROJECT}";
WWW_DK_TAG="${WWW_VERSION}";


################################################################################
##	end of file							      ##
################################################################################
