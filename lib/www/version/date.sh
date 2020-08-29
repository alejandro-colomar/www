################################################################################
##      Copyright (C) 2020        Alejandro Colomar Andrés                    ##
##      SPDX-License-Identifier:  GPL-2.0-only                                ##
################################################################################
##
## Update date & time
## ==================
##
################################################################################


################################################################################
##	source								      ##
################################################################################


################################################################################
##	definitions							      ##
################################################################################


################################################################################
##	functions							      ##
################################################################################
function update_date()
{
	local	date_str="$(date -u +%d/%b/%Y\ %H:%M:%S\ UTC)";

	sed "/Last modified:/s!: .*!: ${date_str}!"			\
		-i ./srv/www/index.html;
}


################################################################################
##	end of file							      ##
################################################################################