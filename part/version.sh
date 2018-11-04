#/bin/bash

version(){
	sed -nr 's/.* ([0-9]+)\..*/\1/p' /etc/centos-release
}

echo `version`
