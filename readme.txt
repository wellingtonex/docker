docker images: lista toda as imagens, como seus nomes criados aleatoriamente ou não,
docker run: cria os containers,
docker pull: faz o download de imagens,
docker ps: acompanha os containers em execução.
docker ps -a: mostra todos os container
docker stop nome|id: stopa a execução de um container
docker start nome|id: starta um container
docker rm nome|id: remove um container
docker rm $(docker ps -qa): remove tudo
docker rmi nome|id: remove uma imagem
docker kill 7efec75730ce: mata um container
docker run --rm -it ubuntu bash: cria um container não persistente

docker exec -it idContainer bash: cria um container e executa o bash nele
ex: docker exec -it d98d5602dc26 ps aux

Nesse capítulo aprendemos o que são contêineres, mas como interagimos com eles ? Precisamos acessar o terminal de cada um deles. Execute o comando:
docker exec -i -t blog-alura bash: entra em um container executando o bash de forma iterativa com o tty
ou docker run -it ubuntu bash

1) Atualize a lista de pacotes:
	sudo apt-get update

2) Instalar o pacote docker.io:
	sudo apt-get -y install docker.io

3) Para rodar o docker automaticamente quando o Ubuntu inicia:
	sudo update-rc.d docker defaults

4) Roda o docker (se não tiver rodando ainda):
	sudo service docker start

5) Teste a instalação do docker:
	sudo docker run hello-world

apt-get update && apt-get install -y apache2

docker commit -m "instalação do apache" [nome ou id do container] [imagem]/apache

docker commit -m "instalação do apache" f0904f08eb52 ubuntu/apache

apachectl start

Construindo uma imagem a partir do Dockerfile:
docker build -t ubuntu/apache .


docker inspect name|ip: Retornará diversas informações. Sendo uma delas o ip que procuramos:

cat /etc/hosts //mostra o ip



docker run -it -v $(pwd):/tmp ubuntu bash

O -v cria um volume para dentro do container. Todos os arquivos que forem criados a partir dessa conexão entre nosso Host Local e o container serão persistidos. Perceba que os arquivos serão criados dentro do container:


Lembre-se: Os dados do banco de dados ficam salvos nas pasta /var/lib/mysql no contêiner