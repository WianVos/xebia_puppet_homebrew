class opedj::ubuntu::config(
	java_parameters="-b64 -Xmx2046 -Xms512"
)
{
        include opendj::params

	file {"opendj java params":
		path => "${opendj::params::installpath}/OpenDJ-2.4.4/config/java.properties",
		content => template("java_params.erb"),
		notify => Exec["opendj commit java_params"],
		require => Exec["opendj install"],
		}
        
	exec {"opendj commit java_params":
                command => "${opendj::params::installpath}/OpenDJ-2.4.4/bin/dsjavaproperties"
                require => Exec['opendj install'],
		notify => service['opendj'],
                }





}
