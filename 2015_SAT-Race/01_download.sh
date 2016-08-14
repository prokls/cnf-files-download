#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 1 GB"
# with commented archives: 1.1 GB

load http://baldur.iti.kit.edu/sat-race-2015/downloads/sr15bench.zip
load http://baldur.iti.kit.edu/sat-race-2015/downloads/sr15bench-hard.zip
# load http://baldur.iti.kit.edu/sat-race-2015/downloads/sat-race-2015-submission.tar.gz  # does not contain CNF files
# load http://www.kr.tuwien.ac.at/staff/lonsing/sat-race-incremental-bmc-hwmcc14-input-files.tar.7z  # does not contain CNF files

verify sr15bench.zip
verify sr15bench-hard.zip
# verify sat-race-2015-submission.tar.gz
# verify sat-race-incremental-bmc-hwmcc14-input-files.tar.7z
