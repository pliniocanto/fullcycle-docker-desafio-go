# fullcycle-docker-desafio-go

Desafio de gerar uma imagem docker com menos de 2MB, que possa complicar e executar uma aplicação golang que imprima "Full Cycle rocks!!"

build
```
$ docker build -t pliniocanto/fullcycle .
```

run
```
$ docker run pliniocanto/fullcycle 
Full Cycle rocks!!
```


Imagem gerada no docker hub.
https://hub.docker.com/r/pliniocanto/fullcycle