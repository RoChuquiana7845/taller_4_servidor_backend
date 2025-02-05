FROM node:20

ARG PORT
ARG DOCKER_WORKDIR

ENV NODE_ENV=development
WORKDIR /${DOCKER_WORKDIR}

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE ${PORT}
CMD ["npm", "run", "start:dev"]
