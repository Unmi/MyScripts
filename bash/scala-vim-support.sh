#!/bin/bash

echo "create ~/.vim/{ftdetect,indent,syntax}"
mkdir -p ~/.vim/{ftdetect,indent,syntax}

for d in ftdetect indent syntax ;
  do 
    echo "download ftdetect/scala.vim, indent/scala.vim and syntax/vim"
    curl -s -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/scala/scala-dist/master/tool-support/src/vim/$d/scala.vim ;
done
