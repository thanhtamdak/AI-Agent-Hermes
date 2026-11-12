FROM node:22-bookworm

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.local/bin:/root/.hermes/bin:${PATH}"

RUN apt-get update && apt-get install -y \
    curl git python3 python3-pip build-essential ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g 9router

RUN echo "Z2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS9Ob3VzUmVzZWFyY2gvaGVybWVzLWFnZW50LmdpdCAvb3B0L2hlcm1lcw==" | base64 -d | sh && \
    pip3 install --break-system-packages ruamel.yaml pyyaml requests httpx fastapi uvicorn && \
    pip3 install --break-system-packages -e "/opt/hermes[all]" || pip3 install --break-system-packages -e /opt/hermes

WORKDIR /app
COPY start.sh /app/start.sh
COPY config.yaml /app/config.yaml
RUN chmod +x /app/start.sh

EXPOSE 7860
CMD ["/app/start.sh"]
