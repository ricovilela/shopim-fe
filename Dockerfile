FROM node:17.1.0

WORKDIR /app/medusa

COPY package.json .

RUN yarn install

COPY . .

ENV NEXT_PUBLIC_MEDUSA_BACKEND_URL=https://shopim-be-production.up.railway.app

RUN yarn build

EXPOSE 80

CMD ["yarn", "start"]
