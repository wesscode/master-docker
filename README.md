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

  - Bind mount: Compartilhar dados do container para a máquina host. Considerado um compartilhamento inseguro por que está fora da zona de controle do Docker.(FileSystem)
  - Tmpfs mount:  Montado na memória temporáriamente, outro container não consegue enxergar.
  - Volume: Uma forma mais segura de armazenamento, por que o dado é persistido dentro da Area reservada para o Docker. Consegue gerar backups e controle do docker(Gerenciavel pelo o docker).

  docker run -d -p 8080:80 --name nginx-demo -v /mnt/c/volume-docker:/usr/share/nginx/html:ro nginx

## DockerFile
*arquivo para criar imagens*
    - Multi stage: Define responsabilidades claras, onde será gerada imagem para cada stage, mas só será considerada a ultima imagem gerada dentro do dockerfile. Ajuda na segurança, organização.

## Docker run
*comando para criar container*

## Docker compose
*arquivo que compoe e cria varios containers ali definidos.*

## Regras para segurança, boas práticas.
  ✅ Cada contêiner deve ter sua própria responsabilidade. </br>
  ✅ Contêineres devem ser imutáveis, leves e rápidos. </br>
  ✅ Não armazene dados em seus contêineres. </br>
  ✅ Contêineres devem ser fáceis de destruir e reconstruir. </br>
  ✅ Use uma imagem base pequena(como o Linux Alpine). </br>
  ✅ Imagens menores são mais fáceis de distribuir. </br>
  ✅ Evite instalar pacotes desnecessários. Isso mantém a imagem limpa e segura. </br>
  ✅ Sempre atualize o Host e o Docker. </br>
  ✅ Não exponha o Daemon. </br>
  ✅ Conheça de onde vem a imagem. </br>
  ✅ Verifique vulnerabilidades nas imagens. </br>
  ✅ Isole as redes de aplicações no Docker. </br>
  ✅ Exposição de portas - Evite expor muitas portas e trabalhe uma regra de Firewall </br>
  ✅ Defina um usuário sem privilégios </br>

## Elasticsearch
*Ferramenta para monitorar todos os dados da aplicação, podemos criar dashboards com os dados coletados. Pode ser instalado no docker.* 
  - Logging
  - Observabilidade
  - Monitoramento
