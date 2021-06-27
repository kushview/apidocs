#!/bin/bash
here="`pwd`"
cd "$here/packages/element" && ldoc -q -f markdown .
cd "$here"
if [ -d "$here/packages/element/build/doc/lua" ];  then
    rsync -var --delete "$here/packages/element/build/doc/lua/" "$here/www/lua/el/latest/"
fi

cd "$here/packages/lua-kv" && ldoc -q -f markdown .
cd "$here"
if [ -d "$here/packages/lua-kv/build/doc/lua" ];  then
    mkdir -p "$here/www/lua/kv/latest/"
    rsync -var --delete "$here/packages/lua-kv/build/doc/lua/" "$here/www/lua/kv/latest/"
fi

#--rsync -var --delete
