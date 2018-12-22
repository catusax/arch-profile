FROM alpine

ENV FRP_VERSION 0.22.0

RUN wget --no-check-certificate https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \ 
    tar xzf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
    cd frp_${FRP_VERSION}_linux_amd64 && \
    mv frps /frps && \
    cd .. && \
    rm -rf *.tar.gz && \
    rm -rf frp_${FRP_VERSION}_linux_amd64

CMD ["/frps","frps.ini"]
