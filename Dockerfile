FROM ubuntu:14.04

# XDA
RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf \
    build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
    lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev \
    libxml2-utils xsltproc unzip python-networkx libswitch-perl schedtool wget

# AOSP
# RUN apt-get update && apt-get install -y git-core gnupg flex bison gperf \
#    build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
#    lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev \
#    libxml2-utils xsltproc unzip wget

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /home/repo && \
    chmod a+x /home/repo

COPY jdk-6u45-linux-x64.bin /home/

RUN cd /home/ && chmod 777 /home/jdk-6u45-linux-x64.bin && ./jdk-6u45-linux-x64.bin && rm -rf jdk-6u45-linux-x64.bin

ENV PATH="/home/jdk1.6.0_45/bin:/home:${PATH}"

CMD ["/bin/bash"]
