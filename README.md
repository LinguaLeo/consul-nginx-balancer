# consul-nginx-balancer


### Building
```bash
docker build -t nginx-balancer .
```

### Running
```bash
docker run \
-e "CONSUL_HOST=consul.host:8500" \
-e "SERVICE_NAME=cache" \
nginx-balancer
```
