FROM codercom/code-server:latest

USER root

RUN apt-get update && apt-get install -y wget gnupg

RUN wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor > /usr/share/keyrings/adoptium.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/adoptium.gpg] https://packages.adoptium.net/artifactory/deb bookworm main" \
    > /etc/apt/sources.list.d/adoptium.list

RUN apt-get update && apt-get install -y \
    temurin-21-jdk \
    python3 \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN code-server --install-extension redhat.java \
    && code-server --install-extension ms-python.python

EXPOSE 8080

CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none"]
