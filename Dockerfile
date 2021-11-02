
FROM node:16.6.1-buster

RUN apt-get update && \
  apt-get install -y \
  neofetch \
  chromium \
  ffmpeg \
  wget \
  mc \
  imagemagick && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .
RUN npm install
RUN npm i figlet 
RUN npm i terminal-kit 
RUN npm i figlet 
RUN npm i qrcode 
RUN npm i base64-img 
RUN npm i ytsr 
RUN npm i google-it 
RUN npm i mathjs 
RUN npm i @adiwajshing/baileys@latest

COPY . .

EXPOSE 5000

CMD ["node", "index"]`
