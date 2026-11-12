FROM ghcr.io/openclaw/openclaw:latest
ENV OPENCLAW_GATEWAY_PORT=10000
ENV OPENCLAW_STATE_DIR=/home/node/.openclaw
ENV OPENCLAW_WORKSPACE_DIR=/home/node/.openclaw/workspace
EXPOSE 10000
CMD ["sh", "-c", "openclaw gateway --port ${PORT} --bind 0.0.0.0 --allow-unconfigured"]
