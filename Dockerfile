# This Docker file is for building this project on Codeship Pro
# https://documentation.codeship.com/pro/languages-frameworks/nodejs/

# use Cypress provided image with all dependencies included
FROM cypress/base:10
RUN node --version
RUN npm --version
WORKDIR /home/node/app
# copy our test application
COPY package.json package-lock.json ./
COPY app ./app
COPY serve.json ./
# copy Cypress tests
COPY cypress.config.js cypress ./
COPY cypress ./cypress

# install NPM dependencies and Cypress binary
RUN npm ci
# check if the binary was installed successfully
RUN $(npm bin)/cypress verify