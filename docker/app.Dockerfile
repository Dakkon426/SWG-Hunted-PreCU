FROM debian:buster

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    ninja-build \
    lua5.3 \
    liblua5.3-dev \
    openssl \
    git \
    ca-certificates \
    libmariadb-dev \
    libmariadb-dev-compat \
    libdb5.3-dev \
    default-jre \
    libssl-dev \
    libboost-all-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy source code (using bind mount in development)
CMD ["bash", "-c", "while true; do sleep 1; done"]
