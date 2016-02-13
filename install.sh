#!/bin/bash

USE_GIT_IGNORE=1
for arg in "$@"; do
  shift
  case "$arg" in
    "--no-git-ignore") USE_GIT_IGNORE="0" ;;
  esac
done

pushd docker-composer-master/ ; md5sum -c md5checksums; result=$(echo $?) ; popd
if [[ "$result" == "0" ]]; then
    cp -R docker-composer-master/bin .
    if [[ "$USE_GIT_IGNORE" == "1" ]]; then
        find docker-composer-master/bin -type f | grep -v 'get-docker-composer' | sed 's#^docker-composer-master##g' >> .gitignore
        echo '/vendor' >> .gitignore
        echo '/composer.lock' >> .gitignore
    fi
    rm -Rf docker-composer-master*
fi