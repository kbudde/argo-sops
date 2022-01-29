#!/bin/env sh

find . -exec sh -c '
    echo "---";
    echo "# $1" >&2;
    sops -d $1 || cat $1' sh {} \;

