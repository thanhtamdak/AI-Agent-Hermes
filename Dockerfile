FROM node:22-bookworm
RUN npm install -g 9router
WORKDIR /app
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
EXPOSE 7860
CMD ["/app/start.sh"]
