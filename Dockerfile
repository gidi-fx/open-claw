FROM ghcr.io/openclaw/openclaw:latest
USER root
RUN mkdir -p /home/node/.openclaw /home/node/.openclaw/workspace && chown -R node:node /home/node
USER node
ENV OPENCLAW_STATE_DIR=/home/node/.openclaw
ENV OPENCLAW_WORKSPACE_DIR=/home/node/.openclaw/workspace
ENV OPENCLAW_GATEWAY_PORT=10000
EXPOSE 10000
CMD ["sh", "-c", "openclaw gateway --port ${PORT} --bind lan --allow-unconfigured"]
