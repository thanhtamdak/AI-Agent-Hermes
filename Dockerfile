FROM node:22-bookworm

ENV NODE_OPTIONS="--max-old-space-size=400"

RUN echo "Z2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9kZWNvbHVhLzlyb3V0ZXIuZ2l0IC9hcHA=" | base64 -d | sh

WORKDIR /app
RUN npm install --legacy-peer-deps && npm run build

COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

EXPOSE 7860
CMD ["/app/start.sh"]
