# syntax=docker/dockerfile:1

# ---- deps (instala dependências para cache) ----
FROM node:20-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci

# ---- build (compila Angular SSR) ----
FROM node:20-alpine AS build
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run build

# ---- runner (apenas deps de produção + dist) ----
FROM node:20-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production
ENV PORT=4000

COPY package.json package-lock.json ./
RUN npm ci --omit=dev && npm cache clean --force

COPY --from=build /app/dist ./dist

# roda como usuário não-root
RUN chown -R node:node /app
USER node

EXPOSE 4000
CMD ["node", "dist/fin-track/server/server.mjs"]
