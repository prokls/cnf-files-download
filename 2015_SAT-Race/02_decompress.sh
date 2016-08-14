#!/usr/bin/env zsh
# CAUTION!
# Be aware that unzipping files from untrusted origins
# can be dangerous for your system

set -e


un-zip   () { mkdir "${1:r}" && cd "${1:r}" && unzip "../$1" && cd .. }
un-targz () { tar -zxvf "$1" }
un-tar7z () { 7z x "$1" && tar -xvf "${1:r}" -C "${1:r:r}" && rm "${1:r}" }


# decompress archives
un-zip sr15bench.zip
un-zip sr15bench-hard.zip

if [ -f "sat-race-2015-submission.tar.gz" ]; then
  un-targz sat-race-2015-submission.tar.gz
fi

if [ -f "sat-race-incremental-bmc-hwmcc14-input-files.tar.7z" ]; then
  un-tar7z sat-race-incremental-bmc-hwmcc14-input-files.tar.7z
fi
