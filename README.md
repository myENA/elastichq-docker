# Dockerized ElasticHQ

Simple Docker build for [ElasticHQ](https://github.com/royrusso/elasticsearch-HQ) using Alpine Linux an NGINX.

# Running

With docker-compose it's a very simple process.

```bash
git clone https://github.com/myENA/elastichq-docker
cd elastichq-docker
docker-compose up -d
```

That's it.  You should have a running container providing ElasticHQ on port 80 of your container.
