#!/bin/bash

set -e


echo "set logstash xpack credentials"

curl -v -u "elastic:elasticpass" -XPUT 'localhost:9200/_xpack/security/user/logstash_system/_password?pretty' -H 'Content-Type: application/json' -d'
{
	"password": "elasticpass"
}
'

echo "set kibana xpack credentials"

curl -v -u "elastic:elasticpass" -XPUT 'localhost:9200/_xpack/security/user/kibana/_password?pretty' -H 'Content-Type: application/json' -d'
{
	"password": "elasticpass"
}
'

