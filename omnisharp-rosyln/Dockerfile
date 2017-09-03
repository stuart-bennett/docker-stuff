FROM microsoft/dotnet:2-sdk-jessie

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb http://download.mono-project.com/repo/debian jessie main" | tee /etc/apt/sources.list.d/mono-official.list && \
    echo "deb http://ftp.debian.org/debian jessie-backports main" | tee /etc/apt/sources.list.d/backports.list && \
    apt-get update && \
    apt-get install -y mono-devel git-core msbuild && \
    apt-get -y -t jessie-backports install libuv1 && \
    mkdir /git-repos

RUN cd /git-repos && \
    git clone https://github.com/OmniSharp/omnisharp-roslyn.git && \
    ln -s /usr/lib/x86_64-linux-gnu/libuv.so.1 /usr/lib/libuv.so && \
    cd omnisharp-roslyn && \
    ./build.sh
