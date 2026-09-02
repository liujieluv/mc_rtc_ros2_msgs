# mc_rtc_ros2_msgs

`mc_rtc_ros2_msgs` is the ROS 2 interface package currently used by the
`robot_control` stack.

## Interfaces

The repository currently defines one message:

```text
msg/JointCommand.msg
```

It contains a timestamp and sequence number, command mode, robot and source
identifiers, joint names, and per-joint position, velocity, effort, `kp`, and
`kd` arrays.

There are currently no service (`srv`) or action interfaces in this package.

## Consumers

Within this workspace, `g1_safe_forward_controller` directly depends on this
package and consumes `mc_rtc_ros2_msgs/msg/JointCommand`.

## Build

```bash
source /opt/ros/humble/setup.bash
colcon build --symlink-install --packages-select mc_rtc_ros2_msgs
```
