# Utilizando a imagem do Node versao 14 como base para nossa imagem
FROM node:14

# Definindo o diretório de trabalho padrao como /app-node
WORKDIR /app-node

# Definindo um argumento para do container (em tempo de build)
ARG PORT_BUILD=3000

# Definindo uma variavel de ambiente do container
ENV PORT=$PORT_BUILD

# Definindo em qual porta será exposta a aplicacao
EXPOSE $PORT_BUILD

# Copiar tudo da pasta atual para a pasta base de /app-node
COPY . .

# Executar o comando "npm install"
RUN npm install

# Quando o container for executado a partir da imagem, use o comando "npm start"
ENTRYPOINT npm start