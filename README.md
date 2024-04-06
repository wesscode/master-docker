### Lets go DOCKER 🐋🐋

## Fundamentos de rede
    - Existe a rede do host e a rede do docker
    - O container pode está em mais de uma rede
    - Drivers de comunicação de rede: Bridge(padrão), None, Host
    

## Especificando Drivers de rede
  **- Bridge:** O container é acessivel pela a máquina host. Ou seja, a porta do container pode ser feita uma ponte para a máquina host.
  **- None:** O container é isolado de tudo e so roda, mas não pode ser conversado em acessado. Unica forma de cominicar com ele é pelo o terminal.
  **- Host:** o container roda na rede do host, tendo acesso a todas as portas do host.

## Opções para acessar meus containers
  **- Docker Desktop**
  **- Docker engine**
  **- Portainer**

## Tipo de volumes
*Definição de volume é o compartilhamento de um espaço para armazenamento no host, o container tem acesso a uma **Docker area** dentro do Filesystem*

  - Bind mount 
  - Volume
  - tmpfs mount

  docker run -d -p 8080:80 --name nginx-demo -v /mnt/c/volume-docker:/usr/share/nginx/html:ro nginx

## DockerFile
*arquivo para criar imagens*
    - Multi stage: Define responsabilidades claras, onde será gerada imagem para cada stage, mas só será considerada a ultima imagem gerada dentro do dockerfile. Ajuda na segurança, organização.

## Docker run
*comando para criar container*

## Docker compose
*arquivo que compoe e cria varios containers ali definidos.*