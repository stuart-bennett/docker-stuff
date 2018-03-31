FROM microsoft/dotnet:2.0.5-sdk-2.1.4-stretch

RUN wget https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.29.1/omnisharp-linux-x64.tar.gz \
        -O /tmp/omnisharp && \
    mkdir /usr/local/omnisharp && \
    tar -xvzf /tmp/omnisharp -C /usr/local/omnisharp && \
    rm /tmp/omnisharp


