#!/usr/bin/env bash

if [[ ! $1 || ! $2 ]]
then
    echo "Usage: retag OLD NEW"
    exit
fi

old=$1
new=$2

git tag $new "${old}^{}"
git tag -d $old
git push origin :refs/tags/$old
git push origin --tags
