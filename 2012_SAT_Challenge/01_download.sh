#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 4.3 GB"

load http://baldur.iti.kit.edu/SAT-Challenge-2012/downloads/sc2012-application.tar
load http://baldur.iti.kit.edu/SAT-Challenge-2012/downloads/sc2012-hard-combinatorial.tar
load http://baldur.iti.kit.edu/SAT-Challenge-2012/downloads/sc2012-random.tar
load http://baldur.iti.kit.edu/SAT-Challenge-2012/downloads/sc2012-portfolio.tar

#verify sc2012-application.tar
#verify sc2012-hard-combinatorial.tar
#verify sc2012-random.tar
#verify sc2012-portfolio.tar
