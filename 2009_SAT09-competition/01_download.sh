#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 660 MB"

load http://www.cril.univ-artois.fr/SAT09/bench/appli.7z
load http://www.cril.univ-artois.fr/SAT09/bench/crafted.7z
load http://www.cril.univ-artois.fr/SAT09/bench/random.7z
load http://www.cril.univ-artois.fr/SAT09/bench/random-additional.7z

verify appli.7z
verify crafted.7z
verify random.7z
verify random-additional.7z
