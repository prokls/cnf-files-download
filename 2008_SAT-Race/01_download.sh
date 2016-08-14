#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 1.1 GB"

load http://baldur.iti.uka.de/sat-race-2008/downloads/SAT-Race-2008-CNF.tar
load http://baldur.iti.uka.de/sat-race-2008/downloads/SAT-Race_TS_1.tgz
load http://baldur.iti.uka.de/sat-race-2008/downloads/SAT-Race_TS_2.tgz

verify SAT-Race-2008-CNF.tar
verify SAT-Race_TS_1.tgz
verify SAT-Race_TS_2.tgz
