#!/bin/bash

START=$1
END=$2

for i in $(seq $START $END)
do
	echo $i
	DOI_URL=`printf "http://dx.doi.org/10.1101/%06d" $i`

	BIORXIV_URL=`curl -L -o /dev/null --silent --head --write-out '%{url_effective}\n' $DOI_URL`

	if [ "$BIORXIV_URL" != "$DOI_URL" ]
	then
		phantomjs code/save_page.js ${BIORXIV_URL} > `printf "data/dois/%06d" $i`
		wget -N ${BIORXIV_URL}.article-info -P data/dois/
		wget -N ${BIORXIV_URL}.article-metrics -P data/dois/
	fi
done
