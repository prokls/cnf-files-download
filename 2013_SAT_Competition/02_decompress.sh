#!/usr/bin/env zsh

set -e

un-targz () { mkdir ${1:r}; cd ${1:r}; tar -zxvf "../$1"; cd .. }


un-targz sc13-benchmarks-application.tgz
un-targz sc13-benchmarks-combinatorial.tgz
un-targz sc13-benchmarks-random.tgz

