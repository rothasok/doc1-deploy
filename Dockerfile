FROM node:18-slim
RUN npm install -g serve
WORKDIR /app

# Copy only the dependency files first
COPY ./vue-admin-core-main/package.json ./vue-admin-core-main/package-lock.json ./
COPY ./vue-admin-core-main/ ./
RUN npm install

# Copy the application files excluding unnecessary items (.dockerignore handles this)
RUN npm run build

EXPOSE 4000

CMD ["npx", "serve", "-s", "dist", "-l", "4000"]


# Start the application
# CMD ["npm", "run", "dev"]
