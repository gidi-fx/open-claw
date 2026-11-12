FROM node:24-slim
RUN npm install -g openclaw@latest
RUN useradd -m openclaw && mkdir -p /home/openclaw/.openclaw /home/openclaw/workspace && chown -R openclaw:openclaw /home/openclaw
WORKDIR /home/openclaw
USER openclaw
ENV OPENCLAW_STATE_DIR=/home/openclaw/.openclaw
ENV OPENCLAW_WORKSPACE_DIR=/home/openclaw/workspace
ENV OPENCLAW_GATEWAY_PORT=10000
EXPOSE 10000
CMD ["sh", "-c", "openclaw gateway --port ${PORT} --bind 0.0.0.0 --allow-unconfigured"]
