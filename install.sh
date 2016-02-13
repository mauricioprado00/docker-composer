cp -R docker-composer-master/bin .
find docker-composer-master/ -type f | grep -v 'get-docker-composer' | sed 's#^docker-composer-master##g' >> .gitignore
rm -Rf docker-composer-master*
