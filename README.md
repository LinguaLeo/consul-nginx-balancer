# consul-nginx-balancer


### Building
```docker build -t nginx-balancer .```

### Running
```docker run \
-e "CONSUL_HOST=consul.host:8500" \
-e "SERVICE_NAME=cache" \
nginx-balancer
```
