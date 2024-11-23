FROM node:20-alpine as base

# Base image for building
FROM base as builder
WORKDIR /app
RUN npm install -g pnpm@latest
COPY package.json pnpm-lock.yaml ./
RUN pnpm install
COPY . .
RUN pnpm generate

# Run the page
FROM caddy:2.9-alpine as runner
WORKDIR /app
COPY --from=builder /app/dist .
COPY Caddyfile .
CMD [ "caddy", "run" ]
EXPOSE 3000