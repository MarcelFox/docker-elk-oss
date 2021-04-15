# docker-elk-oss
This is a simple docker-compose configuration for the _elk-oss_ stack. It was largely inspired by [docker-elk](https://github.com/deviantony/docker-elk) but focused on OSS.

## Running:
`$ docker-compose up`

## Info:
By default, the stack exposes the following ports:

* 5044: Logstash Beats input
* 5000: Logstash TCP input
* 9600: Logstash monitoring API
* 9200: Elasticsearch HTTP
* 9300: Elasticsearch TCP transport
* 5601: Kibana
