#!/bin/bash

START=$1
END=$1
DIFF=$(($END-$START+1))

DOIS=`head -n $END data/dois/doi_urls.txt | tail -n $DIFF`

for DOI_URL in $DOIS
do
	BIORXIV_URL=`curl -L -o /dev/null --silent --head --write-out '%{url_effective}\n' $DOI_URL`
	LOCAL_FILE=`echo $DOI_URL | sed "s=http://dx.doi.org/10.1101/=data/dois/=g"`

	phantomjs code/save_page.js ${BIORXIV_URL} > $LOCAL_FILE
	wget -N ${BIORXIV_URL}.article-info -P data/dois/
	wget -N ${BIORXIV_URL}.article-metrics -P data/dois/
done
