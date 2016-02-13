pushd docker-composer-master/ ; md5sum -c md5checksums; result=$(echo $?) ; popd
if [[ "$result" == "0" ]]; then
    cp -R docker-composer-master/bin .
    find docker-composer-master/ -type f | grep -v 'get-docker-composer' | sed 's#^docker-composer-master##g' >> .gitignore
    rm -Rf docker-composer-master*
fi