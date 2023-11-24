FROM ubuntu:18.04

ENV SGX_DEBUG=1

ENV SGX_MODE=SIM

WORKDIR /opt/intel

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget build-essential

# Install and build Sgx
RUN wget https://download.01.org/intel-sgx/sgx-linux/2.8/distro/ubuntu18.04-server/sgx_linux_x64_sdk_2.8.100.3.bin && \
    chmod +x sgx_linux_x64_sdk_2.8.100.3.bin && \
    echo 'yes' | ./sgx_linux_x64_sdk_2.8.100.3.bin
