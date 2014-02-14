#!/bin/bash

GTP_DIR=$1
GITHUB="https://www.github.com/brianpeck"

cd .cache
if [ ! -d "$GTP_DIR" ]; then
  git clone $GITHUB"/"$GTP_DIR".git" -q
else
  cd $GTP_DIR
  git pull origin master -q
  cd ..
fi

cd ..

lynx ".cache/$GTP_DIR/index.html"
