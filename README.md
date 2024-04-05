### Lets go DOCKER 🐋🐋

## Fundamentos de rede
    - Existe a rede do host e a rede do docker
    - O container pode está em mais de uma rede
    - Tipos de comunicação de rede: Bridge(padrão)
    

## Especificando tipos de rede
  *- Bridge:* O container é acessivel pela a máquina host. Ou seja, a porta do container pode ser feita uma ponte para a máquina host.
  *- None:* O container é isolado de tudo e so roda, mas não pode ser conversado em acessado. Unica forma de cominicar com ele é pelo o terminal.
  *- Host:* o container roda na rede do host, tendo acesso a todas as portas do host.