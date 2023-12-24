FROM ubuntu:22.04

RUN dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get install -y \
    wget \
    libc6:armhf && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/ROBOTIS-GIT/OpenCR-Binaries/raw/master/turtlebot3/ROS2/latest/opencr_update.tar.bz2 && \
    tar -xvf opencr_update.tar.bz2 && \
    rm -rf ./opencr_update.tar.bz2

WORKDIR opencr_update
CMD ./update.sh $OPENCR_PORT $OPENCR_MODEL.opencr