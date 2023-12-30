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


## Bringup

- Run container
```
docker compose run --rm ros
```

- Bring up basic packages to start TurtleBot3 applications. 
```
ros2 launch turtlebot3_bringup robot.launch.py
```
https://emanual.robotis.com/docs/en/platform/turtlebot3/bringup/#bringup

- Run teleoperation node
```
ros2 run turtlebot3_teleop teleop_keyboard
```
https://emanual.robotis.com/docs/en/platform/turtlebot3/basic_operation/#teleoperation