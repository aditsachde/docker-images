FROM ubuntu:22.04

# Install rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install distro packages
RUN apt-get update && apt-get install -y \
    clang \
    mold \
 && rm -rf /var/lib/apt/lists/*


# Install rust based tools
RUN cargo install cargo-watch

