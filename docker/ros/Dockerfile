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
