# OPENJDK 8 ALPINE 3.8

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)


# Nuevas funcionalidades:

  - Permite definir la zona horaria al iniciar el servicio
  - Permite definir parametros de JAVA al iniciar el servicio

### Iniciar

Dillinger requires [Node.js](https://nodejs.org/) v4+ to run.

Install the dependencies and devDependencies and start the server.

```sh
$ docker run -d -e TIMEZONE=America/Montevideo -e JAVA_OPTS= sofislab/openjdk:jdk8-alpine3.8 
```

### Variables


| Variable | Detalle |
| ------ | ------ |
| TIMEZONE | Define la zona horaria a utilizar (America/Montevideo, America/El_salvador) |
| JAVA_OPTS | Define parametros de la jvm |

License
----

Martin vilche
Sofis Solutions

