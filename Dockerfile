FROM node:24-bookworm-slim
RUN npm install -g openclaw@latest
EXPOSE 10000
CMD ["openclaw", "gateway", "--port", "10000", "--bind", "0.0.0.0"]
