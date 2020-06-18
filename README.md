darkanakin41/pgadmin-ddb
===

This project have been created in order to provide a base installation of [PgAdmin](https://www.pgadmin.org/) in [docker-devbox-ddb](https://github.com/gfi-centre-ouest/docker-devbox-ddb) context

It is really basic, but I am using this project to use it on my different environments.

# Prerequisites
In order to use this container out of the box, you need to have : 
* [docker](https://docker.io)
* [docker-compose](https://docs.docker.com/compose/)
* [docker-devbox](https://github.com/gfi-centre-ouest/docker-devbox)
* [docker-devbox-ddb](https://github.com/gfi-centre-ouest/docker-devbox-ddb)

# Installation

Go into the pgadmin-ddb folder and execute : 
```
ddb configure # it will generate docker-compose files
docker-compose up -d # to start the containers
```

If the ddb.yaml is not changed, you can access it through [http://pgadmin.test](http://pgadmin.test)