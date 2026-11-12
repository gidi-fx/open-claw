FROM node:24-slim
RUN npm install -g openclaw@latest
RUN useradd -m openclaw
WORKDIR /home/openclaw
USER openclaw
EXPOSE 10000
CMD ["sh", "-c", "openclaw gateway --port ${PORT} --bind 0.0.0.0"]
