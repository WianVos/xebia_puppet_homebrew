# Class: tomcat
#
# This module manages tomcat
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
class tomcat::admin {
	
  include tomcat::params

  user{"tomcat":
    ensure => present,
    uid    => $tomcat_user_uid? {
      ''      => undef,
      default => $tomcat_user_uid,
    },
    groups => $tomcat_user_groups? {
      ''      => undef,
      default => $tomcat_user_groups,
    }
  }


}
