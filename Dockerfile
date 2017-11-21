FROM debian:latest
add bin /app
EXPOSE 3000
RUN apt-get update
RUN apt-get -y install libssl1.1 zlib1g
CMD ["/app/linuxlunch"]
