std_msgs/Header header
uint64 sequence

uint8 MODE_UNSPECIFIED=0
uint8 MODE_POSITION_VELOCITY_EFFORT=1
uint8 mode

string robot_name
string source
string[] joint_names

# Desired joint position qcmd [rad].
float64[] position

# Desired joint velocity dqcmd [rad/s].
float64[] velocity

# Feed-forward joint torque tau_ff [N.m].
float64[] effort

# Per-joint proportional actuator gain [N.m/rad]. Zero disables position PD.
float64[] kp

# Per-joint derivative actuator gain [N.m/(rad/s)]. Zero disables velocity PD.
float64[] kd
