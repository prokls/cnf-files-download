#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 5.2 GB"

load http://www.satcompetition.org/2014/files/sc14-app.tar
load http://www.satcompetition.org/2014/files/sc14-crafted.tar
load http://www.satcompetition.org/2014/files/sc14-random.tar

verify sc14-app.tar
verify sc14-crafted.tar
verify sc14-random.tar