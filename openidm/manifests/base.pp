# Class: openidm
#
# This module manages openidm
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class openidm::base {

	case $operatingsystem {
                Ubuntu  : { include openidm::ubuntu}
                default : { notice "unsupported operatingsystem ${operatingsystem}" }
                }

}
