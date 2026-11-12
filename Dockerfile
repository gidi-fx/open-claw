FROM node:24-bookworm-slim
WORKDIR /app
RUN npm i -g openclaw@latest --no-optional
EXPOSE 10000
CMD openclaw gateway --port 10000 --bind 0.0.0.0 --plugins openai --no-cron --no-auto-update
