FROM node:20-alpine3.20

WORKDIR /tmp

ENV UUID=77639962-94f6-4bc0-8690-aed9df6f5f13 \
    ARGO_DOMAIN=ssper.topcd.ggff.net \
    ARGO_AUTH=eyJhIjoiOWY2ODlkYjlhZDNmM2VmMTc1MTcwNThjZjI3MTQwZTIiLCJ0IjoiNDczNDdhYTMtYjg1NC00M2YzLWFiMmMtY2I5ZmNiZDU1Yzk1IiwicyI6Ik16QXpNbVU0WkdRdE9URmlaUzAwWkdRNUxUaGpZVGt0T0RNeVlUWXlNREUxTURjNSJ9
    NEZHA_SERVER=tta.wahaaz.xx.kg:80
    NEZHA_KEY=OZMtCS6G39UpEgRvzRNXjS7iDNBRmTsI

RUN apk update && apk add --no-cache bash openssl curl &&\
    npm i node-sbx

CMD ["npx", "node-sbx"]
