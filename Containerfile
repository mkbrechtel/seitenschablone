FROM node:18
ENV NODE_PATH=/node_modules PATH="/node_modules/.bin:${PATH}"
RUN echo "--modules-folder $NODE_PATH" > /root/.yarnrc
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
# COPY . .
# CMD vite --host
