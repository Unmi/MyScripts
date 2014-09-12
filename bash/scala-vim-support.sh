#!/bin/bash

echo "create ~/.vim/{ftdetect,indent,syntax}"
mkdir -p ~/.vim/{ftdetect,indent,syntax}

for d in ftdetect indent syntax ;
  do 
    echo "download $d/scala.vim"
    curl -s -o ~/.vim/$d/scala.vim https://raw.githubusercontent.com/scala/scala-dist/master/tool-support/src/vim/$d/scala.vim ;
done

echo "done, 'syn on' or add 'syn on' in ~/.vimrc"
