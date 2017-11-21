FROM crystallang/crystal
add . /app
RUN cd /app && crystal dep build
CMD ["/app/bin/linuxlunch"]
EXPOSE 3000
