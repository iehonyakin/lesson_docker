# Lesson_docker Otus docker 

### Установил docker  в директорию урока.
* yum install docker

### создал Dockerfile, создал минимальную конфигурацию Nginx +Alpine.
Что бы не коммитеть в образ, создал файл index.html, копирую его командой
* COPY index.html /usr/share/nginx/html/index.html

### Заменил приветствие на свое.
<h5>Welcome to nginx IGOR HONYAKIN!</h5>

### Запустил сборку образа
* docker build -t nginx_alpine:test1 .

### нашел собравшийся образ 
* docker images

### запустил контейнер 
* docker run -d -p 80:80 2f916d78d97c

### подключился к нему 
* docker exec -it 2f916d78d97c sh

### Проверка работы


####################################################################################
[root@srv-centos-hi lesson_docker]# curl http://localhost
CTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h3>Welcome to nginx IGOR HONYAKIN!</h3>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>


[root@srv-centos-hi lesson_docker]


### Определите разницу между контейнером и образом

- Образ подобие ISO, который содержит дистрибутивы, данные и т.п., образ можно перенести на другой хост и запустить с него контейнер.
- Контейнер - излированная среда, в коророй выполняются сервисы.
- Думаю, что можно собрать ядро, причин к обратному не вижу.



### Выгрузил, забрать можно так:
* docker pull iehonyakin/otus_docker
* https://hub.docker.com/r/iehonyakin/otus_docker

### команды для выкгрузки
* docker tag 2f916d78d97c iehonyakin/otus_docker:my_commit2
* docker push iehonyakin/otus_docker









