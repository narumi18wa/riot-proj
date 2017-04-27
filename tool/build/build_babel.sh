#! /bin/bash

find ./dist/script -type d -name lib -prune -o -type f -name *.js -print | xargs browserify -o dist/script/bundle.js -t [ babelify --presets [ es2015 ] ]
find ./dist/script -type d -name lib -prune -o -type f -name *.js -print | xargs rm -rf
