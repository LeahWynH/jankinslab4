FROM node:latest
RUN git clone https://github.com/LeahWynH/jankinslab4.git
RUN npm cache clean --force
RUN npm install
EXPOSE 5000
ENTRYPOINT ["index.js"]
