## OpenCR Setup
https://emanual.robotis.com/docs/en/platform/turtlebot3/opencr_setup/#opencr-setup


### Add udev rules in host environment

```
wget \
https://raw.githubusercontent.com/ROBOTIS-GIT/turtlebot3/humble-devel/turtlebot3_bringup/script/99-turtlebot3-cdc.rules \
-O /etc/udev/rules.d/99-turtlebot3-cdc.rules
```

### Update OpenCR Firmware
```
docker compose run --rm opencr-setup
```