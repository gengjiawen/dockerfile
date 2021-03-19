#!/bin/sh

git clone https://github.com/gengjiawen/koajs-design-note.git
cd koajs-design-note
echo $PWD
mkdir dist
gitbook epub ./ dist/koa-design.epub
gitbook mobi ./ dist/koa-design.mobi
gitbook pdf ./ dist/koa-design.pdf

ls -lh -R dist