
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
npm install
npm i figlet 
npm i terminal-kit 
npm i figlet 
npm i qrcode 
npm i base64-img 
npm i ytsr 
npm i google-it 
npm i mathjs 
npm i @adiwajshing/baileys@latest

COPY . .

EXPOSE 5000

CMD ["node", "index"]`
