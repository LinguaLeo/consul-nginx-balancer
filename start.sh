#!/bin/bash

service nginx start
consul-template -consul=$CONSUL_HOST -template="/etc/nginx.ctpl:/etc/nginx/conf.d/service.conf:service nginx reload"
