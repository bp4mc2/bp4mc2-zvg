#!/bin/bash
echo Clear old pages
curl -X PUT -T empty.ttl http://localhost:8080/bp4mc2/container/pages
for f in *.ttl ; do echo ${f%.ttl}; curl -X POST -T $f http://localhost:8080/bp4mc2/container/pages ; done
