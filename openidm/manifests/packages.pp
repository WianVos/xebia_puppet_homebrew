class openidm::packages{

	$packages = ['openjdk-6-jdk']	
	package{$packages:
		ensure => installed,
		}
}
