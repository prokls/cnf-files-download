#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 381 MB"

load http://baldur.iti.uka.de/sat-race-2010/downloads/SAT-Race-2010-CNF.tar

verify SAT-Race-2010-CNF.tar
