FROM node:alpine

WORKDIR /app

COPY . .

EXPOSE 7860

RUN apk update && apk upgrade &&\
    apk add --no-cache openssl curl bash &&\
    chmod +x index.js npm webss bos &&\
    npm install

CMD ["node", "index.js"]
