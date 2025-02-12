# Определяем версию Node.js как аргумент
ARG NODE_VERSION=20.9-alpine

# Этап 1: Сборка и установка зависимостей
FROM node:${NODE_VERSION} AS builder
WORKDIR /home/node/app

# Устанавливаем pnpm
RUN npm install -g pnpm

# Копируем файлы зависимостей и устанавливаем их
COPY package*.json ./
COPY pnpm-lock.yaml ./
RUN pnpm install

# Копируем исходный код и выполняем сборку
COPY . .

EXPOSE 4565
# Используем shell форму CMD для запуска приложения
CMD [ "pnpm", "start" ]

