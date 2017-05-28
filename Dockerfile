FROM ubuntu:16.04
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install build-essential
RUN apt-get -y install git curl zip
RUN mkdir -p /root/tmp
RUN curl -sL https://github.com/nicehash/nheqminer/releases/download/0.5c/Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip -o /root/tmp/Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip
WORKDIR /root/tmp
RUN unzip /root/tmp/Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip
RUN mv nheqminer_16_04 /usr/bin/nheqminer
RUN chmod +x /usr/bin/nheqminer
CMD ["/bin/bash"]
