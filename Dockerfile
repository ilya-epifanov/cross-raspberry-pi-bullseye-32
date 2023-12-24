FROM navikey/raspbian-bullseye:latest

RUN apt-get update -y \
 && apt-get full-upgrade -y \
 && apt-get install -y curl ca-certificates clang build-essential cmake \
 && apt-get clean -y \
 && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s - -y
ENV PATH=/root/.cargo/bin:/bin:/usr/bin
