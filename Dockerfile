## Pilih image NodeJS versi 3.19
FROM node:22-alpine3.19

## Salin file package.json dan direktori src dari perangkat kita (lokal) ke docker image 
COPY package.json /app/
COPY src /app/

## Pindah direktori (cd) ke /app
WORKDIR /app

## Perintah yang akan dijalankan
RUN npm install

## Penutup Dockerfile, jalankan aplikasi (node server.js)
CMD ["node", "server.js"]