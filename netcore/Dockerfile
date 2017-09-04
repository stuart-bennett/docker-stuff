FROM microsoft/dotnet:2-sdk

RUN apt-get update && \
    apt-get install -y libuv1 && \
    ln -s /usr/lib/x86_64-linux-gnu/libuv.so.1 /usr/lib/libuv.so
