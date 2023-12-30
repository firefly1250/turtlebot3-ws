ARG ROS_DISTRO=humble
FROM ros:${ROS_DISTRO}-ros-base

ARG USER=ubuntu
RUN useradd --create-home --home-dir /home/${USER} --shell /bin/bash --user-group --groups adm,sudo ${USER} && \
    echo ${USER}:${USER} | chpasswd && \
    echo "${USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# https://emanual.robotis.com/docs/en/platform/turtlebot3/sbc_setup/#sbc-setup

RUN apt-get update && \
    apt-get install -y \
    byobu \
    vim \
    bash-completion \
    ros-${ROS_DISTRO}-hls-lfcd-lds-driver \
    ros-${ROS_DISTRO}-turtlebot3-msgs \
    ros-${ROS_DISTRO}-dynamixel-sdk \
    libudev-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER ${USER}

ARG WORKDIR=/opt/turtlebot3_ws
WORKDIR ${WORKDIR}
RUN mkdir -p ${WORKDIR}/src && cd ${WORKDIR}/src && \
    git clone -b humble-devel --depth 1 https://github.com/ROBOTIS-GIT/turtlebot3.git && \
    git clone -b ros2-devel --depth 1 https://github.com/ROBOTIS-GIT/ld08_driver.git && \
    cd ${WORKDIR}/src/turtlebot3 && \
    rm -r turtlebot3_cartographer turtlebot3_navigation2 && \
    cd ${WORKDIR} && \
    . /opt/ros/${ROS_DISTRO}/setup.sh && \
    colcon build && \
    rm -rf src build log

WORKDIR /home/${USER}

# TURTLEBOT3
ENV ROS_DOMAIN_ID=30 

ENV LDS_MODEL=LDS-02
ENV TURTLEBOT3_MODEL=burger

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]