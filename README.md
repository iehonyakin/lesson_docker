# Lesson_docker H1
## Otus docker H2


* установил docker  в директорию урока.
yum install docker

* нашел Dockerfile, подредактировал его.
https://github.com/nginxinc/docker-nginx/blob/master/stable/alpine/Dockerfile
COPY index.html /usr/share/nginx/html/index.html
* создал файл index.html, куда прописал свои данные.
###################################################################################
</style>
</head>
<body>
<h1>Welcome to nginx IGOR HONYAKIN!</h1>asdfghjQQ
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
###################################################################################

* запустил сборку образа
docker build -t nginx_my .

* наше собравшийся образ 
docker images

*запустил контейнер 
docker run -d -p 80:80 nginx_my
* подключился к нему 
docker exec -it 7464c490c997 sh

Проверка работы
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
<h1>Welcome to nginx IGOR HONYAKIN!</h1>asdfghjQQ
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>


[root@srv-centos-hi lesson_docker]#

#########################################################################


#########################################################################
#Определите разницу между контейнером и образом
####################################################################
- Образ подобие ISO, который содержит дистрибутивы, данные и т.п., образ можно перенести на другой хост и запустить с него контейнер.
- Контейнер - излированная среда, в коророй выполняются сервисы.
- Думаю, что можно собрать ядро, причин к обратному не вижу.



#####################################################################
выгрузил, забрать можно так:     docker pull iehonyakin/otus_docker
https://hub.docker.com/r/iehonyakin/otus_docker

docker tag 7464c490c997 iehonyakin/otus_docker:my_commi
docker push iehonyakin/otus_docker









