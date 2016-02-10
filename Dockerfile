FROM nginx:latest

ENV CONSUL_TEMPLATE_VERSION 0.12.2

RUN apt-get update && apt-get install -y curl && apt-get install -y unzip
RUN curl -o /tmp/template.zip https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip \
&& unzip -d /usr/local/bin /tmp/template.zip

ADD nginx.ctpl /etc/nginx.ctpl
ADD start.sh /bin/start.sh

RUN chmod +x /bin/start.sh
RUN rm -v /etc/nginx/conf.d/*.conf

ENTRYPOINT ["/bin/start.sh"]

EXPOSE 80
