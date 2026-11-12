FROM node:22-bookworm
RUN npm install -g openclaw@latest
RUN useradd -m node2
USER node2
WORKDIR /home/node2
ENV HOME=/home/node2
ENV OPENCLAW_STATE_DIR=/home/node2/.openclaw
ENV OPENCLAW_GATEWAY_BIND=custom:0.0.0.0
ENV OPENCLAW_GATEWAY_PORT=10000
EXPOSE 10000
CMD ["sh", "-c", " (while true; do nc -l -p ${PORT:-10000} -e echo \"HTTP/1.1 200 OK\\r\\n\\r\\nOK\" 2>/dev/null || python3 -m http.server ${PORT:-10000} 2>/dev/null || sleep 1; done) & openclaw gateway --port ${PORT:-10000} --allow-unconfigured; wait"]
