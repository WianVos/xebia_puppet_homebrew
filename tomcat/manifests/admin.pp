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
    uid    => $tomcat::params::tomcat_user_uid? {
      ''      => undef,
      default => $tomcat::params::tomcat_user_uid,
    },
    groups => $tomcat::params::tomcat_user_group? {
      ''      => undef,
      default => $tomcat::params::tomcat_user_group,
    }
  }


}
