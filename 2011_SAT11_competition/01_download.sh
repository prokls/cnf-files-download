#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 5 GB"

load http://www.cril.univ-artois.fr/SAT11/bench/SAT11-Competition-SelectedBenchmarks.tar
load http://www.cril.univ-artois.fr/SAT11/bench/SAT11-Competition-Application-Crafted-UnselectedBenchmarks.tar
load http://www.cril.univ-artois.fr/SAT11/bench/SAT11-Competition-GMUS-SelectedBenchmarks.tar
load http://www.cril.univ-artois.fr/SAT11/bench/SAT11-Competition-MUS-SelectedBenchmarks.tar
load http://www.cril.univ-artois.fr/SAT11/bench/SAT11-Competition-MUS-SubmittedBenchmarks.tar

verify SAT11-Competition-SelectedBenchmarks.tar
verify SAT11-Competition-Application-Crafted-UnselectedBenchmarks.tar
verify SAT11-Competition-GMUS-SelectedBenchmarks.tar
verify SAT11-Competition-MUS-SelectedBenchmarks.tar
verify SAT11-Competition-MUS-SubmittedBenchmarks.tar
