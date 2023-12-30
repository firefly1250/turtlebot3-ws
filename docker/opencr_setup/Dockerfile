FROM ubuntu:22.04

RUN wget https://github.com/ROBOTIS-GIT/OpenCR-Binaries/raw/master/turtlebot3/ROS1/latest/opencr_update.tar.bz2 && \
    tar -xvf opencr_update.tar.bz2 && \
    rm -rf ./opencr_update.tar.bz2

CMD ./update.sh $OPENCR_PORT $OPENCR_MODEL.opencr