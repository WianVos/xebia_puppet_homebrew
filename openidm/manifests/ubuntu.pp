class openidm::ubuntu {

	case $lsbdistcodename {
		lucid : { include openidm::ubuntu::lucid }
		default : { notice "unsupported ubuntu release"}
	}
}
