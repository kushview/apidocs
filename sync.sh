#!/bin/sh

here="`pwd`"
cd "$here/packages/element" && git pull origin master
cd "$here/packages/lua-kv" && git pull origin master
cd "$here"
git commit -am "Pull latest packages"

