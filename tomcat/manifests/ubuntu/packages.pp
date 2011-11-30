class tomcat::ubuntu::packages{

	packages { ['openjdk-6-jdk',"liblog4j1.2-java", "libcommons-logging-java"]:	
		ensure => installed,
	}
}
