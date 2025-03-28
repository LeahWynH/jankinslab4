FROM node:latest

WORKDIR /app

COPY . .

# Add these steps in this specific order
RUN rm -rf node_modules
RUN rm -f package-lock.json
RUN npm cache clean --force
RUN npm install --no-package-lock
EXPOSE 5000
ENTRYPOINT ["npm", "start"]
