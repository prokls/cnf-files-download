#!/usr/bin/env zsh

set -e

load   () { wget -bcv "$1" }
verify () { shasum -c "$1.sha1" }


echo "This download will have a total size of 4.8 GB"

load http://satcompetition.org/2013/files/sc13-benchmarks-application.tgz
load http://satcompetition.org/2013/files/sc13-benchmarks-combinatorial.tgz
load http://satcompetition.org/2013/files/sc13-benchmarks-random.tgz

verify sc13-benchmarks-application.tgz
verify sc13-benchmarks-combinatorial.tgz
verify sc13-benchmarks-random.tgz
