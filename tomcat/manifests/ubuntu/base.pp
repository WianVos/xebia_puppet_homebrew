class tomcat::ubuntu::base {
	include tomcat::params	
	include tomcat::ubuntu::admin
	include tomcat::ubuntu::filesys
	include tomcat::ubuntu::install

	Class ['tomcat::ubuntu::admin'] -> Class ['tomcat::ubuntu::filesys'] -> Class ['tomcat::ubuntu::install']
	

}
