FROM errordeveloper/iojs-minimal-runtime:v1.0.1
ADD . /srv/app

# Disable strict SSL for npm (use with caution)
RUN npm config set strict-ssl false

WORKDIR /srv/app
RUN npm install
EXPOSE 80
ENTRYPOINT ["node", "index.js"]
