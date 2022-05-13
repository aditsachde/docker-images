FROM rust

RUN cargo install cargo-watch
WORKDIR /app
COPY . .
RUN cargo build
EXPOSE 8080
CMD [ "cargo", "watch", "-x", "run" ]
