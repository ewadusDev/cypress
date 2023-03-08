FROM cypress/base:18.14.1
USER 0
RUN mkdir /cypress_project
WORKDIR /cypress_project
COPY ./package.json .
COPY ./cypress ./cypress
COPY ./cypress.config.js .
RUN npm install
RUN apt-get update && apt-get install -y --no-install-recommends cron && \
    rm -r /var/lib/apt/lists/*
RUN npx cypress verify
# ENTRYPOINT [ "npx","cypress"]
# able to modify 
CMD [ "npx", "cypress", "run" ]