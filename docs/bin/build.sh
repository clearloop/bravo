#!/usr/bin/env sh

echo "doc building ...."
rm -rf `pwd`/docs
gitbook build `pwd` `pwd`/docs
