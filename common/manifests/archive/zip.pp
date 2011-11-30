/*
zip archive module
Download and unzip a zip archive

Parameters
$name=<archive filename>
$source_url=<file>
$target=<pathname>



*/
define common::archive::zip (
	$source_url,
	$target,
   	$regdir="/var/tmp",
	$timeout='360'
){

  require common::packages
 
  	if !defined(File[$target]) {
   		file {"$target":
		ensure => directory,
		}
	}

 	exec {"$name download and unpack":
    		command => "bash -c TMPFILE=`/bin/mktemp -u`; /usr/bin/curl -o \$TMPFILE.zip --url ${source_url} && unzip \$TMPFILE.zip -d ${target} && rm \$TMPFILE.zip && touch ${regdir}/${name}",
    		creates => "$regdir/$name",
    		require => [Package["unzip","curl"],File["${target}"]],
    		path => ["/bin","/usr/bin", "/usr/sbin"],
    		timeout => "$timeout",
    		logoutput => "true",
		}
}


