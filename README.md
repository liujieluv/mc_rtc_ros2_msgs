# mc_rtc_ros2_msgs

`mc_rtc_ros2_msgs` 是 mc_rtc 与本 ROS 2 控制栈之间的机器人无关消息包。当前只
定义 `mc_rtc_ros2_msgs/msg/JointCommand`，没有 service 或 action。

## `JointCommand.msg`

- `header`：ROS 标准时间戳与 frame metadata；
- `sequence`：命令序列号；
- `mode`：`MODE_UNSPECIFIED` 或
  `MODE_POSITION_VELOCITY_EFFORT`；
- `robot_name`、`source`：目标机器人和命令来源标识；
- `joint_names`：后续数组所采用的关节名顺序；
- `position`、`velocity`、`effort`：期望位置、速度与前馈力矩；
- `kp`、`kd`：逐关节执行器 PD 增益。

所有数值数组都是动态长度；消息定义本身不规定 G1 关节数量，也不保证数组
长度或顺序有效。校验与关节名映射由具体消费者负责。本接口与
`WBMpcRobotState` / `WBMpcJointAction` 的固定 29DoF 协议相互独立。

## Host 构建与检查

```bash
cd /home/liu/robot_control_ws
source /opt/ros/humble/setup.bash
colcon build --symlink-install --packages-select mc_rtc_ros2_msgs
source install/setup.bash
ros2 interface show mc_rtc_ros2_msgs/msg/JointCommand
```

本包是 Host 侧 mc_rtc 集成接口，不属于 Docker 中的 WB-MPC 算法 overlay。
