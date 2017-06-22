# Dockerized ElasticHQ

Simple Docker build for [ElasticHQ](https://github.com/royrusso/elasticsearch-HQ) using Alpine Linux and NGINX.

# Running

With docker-compose it's a very simple process.

```bash
git clone https://github.com/myENA/elastichq-docker
cd elastichq-docker
docker-compose up -d
```

That's it.  You should have a running container providing ElasticHQ on port 80 of your container.

# Notes

You will want to enable CORS on your elasticsearch node(s) to use this directly.
More information about that can be found in the [official es documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/modules-http.html).
Read and understand the `http.cors.enabled` and `http.cors.allow-origin` options at a minimum.
