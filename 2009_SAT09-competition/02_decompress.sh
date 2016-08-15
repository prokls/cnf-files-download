#!/usr/bin/env zsh

set -e

un-7z  () { mkdir "${1:r}"; cd "${1:r}"; 7za x "../$1"; cd .. }


# decompress archive
un-7z appli.7z
un-7z crafted.7z
un-7z random.7z
un-7z random-additional.7z
