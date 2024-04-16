# Estágio de compilação
FROM node:20-alpine as build-stage

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de configuração do projeto('package.json' e 'package-lock.json')
COPY package*.json /app/

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . /app

# Compila a aplicação para a produção
RUN npm run build

# Estágio de Publicação
FROM nginx:alpine as publish-stage

# Copia os arquivos compilados do estágio de compilação para o diretório de servir do Nginx
COPY --from=build-stage /app/dist/angular-app/browser/ /usr/share/nginx/html

# Expõe a porta 80 para o serviço HTTP
EXPOSE 80

# Inicia o Nginx e mantém o processoo em primeiro plano
CMD [ "nginx", "-g", "daemon off;" ]