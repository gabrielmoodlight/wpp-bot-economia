# Usa imagem oficial Node
FROM node:20

# Define diretório de trabalho
WORKDIR /

# Copia os arquivos do projeto
COPY package*.json ./
RUN npm install

COPY . .

# Expõe a porta (não usada, mas Fly precisa disso)
EXPOSE 3000

# Comando de inicialização
CMD ["node", "index.js"]
