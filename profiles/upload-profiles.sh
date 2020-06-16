#!/bin/bash
for f in *.ttl ; do echo ${f%.ttl}; curl -X PUT -T $f http://localhost:8080/bp4mc2/container/${f%.ttl} ; done
