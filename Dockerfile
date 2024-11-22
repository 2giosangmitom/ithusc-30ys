FROM node:20-alpine as base

# Base image for building
FROM base as builder
WORKDIR /app
RUN npm install -g pnpm@latest
COPY package.json pnpm-lock.yaml ./
RUN pnpm install
COPY . .
RUN pnpm build

# Run the page
FROM base as runner
WORKDIR /app
COPY --from=builder /app/.output .
EXPOSE 3000
CMD [ "node", "server/index.mjs" ]
