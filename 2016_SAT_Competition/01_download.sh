#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 10 GB"

load http://baldur.iti.kit.edu/sat-competition-2016/downloads/app16.zip
load http://baldur.iti.kit.edu/sat-competition-2016/downloads/crafted16.zip
load http://baldur.iti.kit.edu/sat-competition-2016/downloads/Agile.zip
load http://baldur.iti.kit.edu/sat-competition-2016/downloads/RandomSat.zip
load http://baldur.iti.kit.edu/sat-competition-2016/downloads/incremental.zip

verify app16.zip
verify crafted16.zip
verify Agile.zip
verify RandomSat.zip
verify incremental.zip