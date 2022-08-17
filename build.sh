#!/bin/bash

if [ ! -e node_modules ]
then
  mkdir node_modules
fi

clean () {
  rm -rf node_modules
  rm -rf package-lock.json
}

init () {
  docker-compose run node sh -c "npm rebuild esbuild && npm install"
}

start () {
  docker-compose up
}

for param in "$@"
do
  case $param in
    clean)
      clean
      ;;
    init)
      init
      ;;
    start)
      start
      ;;
    *)
      echo "Invalid argument : $param"
  esac
  if [ ! $? -eq 0 ]; then
    exit 1
  fi
done