FROM alpine:latest

RUN apk add --no-cache git docker-cli

WORKDIR /benchmark

RUN git clone https://github.com/ooplata/edc2-dockerbench.git

COPY run_benchmark.sh /run_benchmark.sh
RUN chmod +x /run_benchmark.sh

CMD ["/run_benchmark.sh"] 
