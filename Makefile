# Makefile
#
# This file contains some helper scripts for building / deploying this site.

build:
	rm -rf public
	bower install
	hugo

develop:
	rm -rf public
	bower install
	hugo server --watch

deploy:
	aws s3 sync public/ s3://www.rdegges.com --acl public-read --delete
