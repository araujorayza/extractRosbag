# extractRosbag #

### What is it? ###
It's a bash script that selects special topics from a .bag file, formats their contents and saves them into separate .txt files.

### Which topics? ###
* `/bebop/cmd_vel`
* `/bebop/joy`
* `/bebop/transf_position`
* `/bebop/waypoint`
* `/bebop/odom`

and, if present,
* `/vicon/bebop/bebop`

### How to use it? ###
1. Rename your .bag file Voo.bag
2. Put extractRosbag.sh in the same folder as the Voo.bag file
3. Run in terminal
```
./extractRosbag.sh
```
### Why? ###
It's useful if you are using [bebop_autonomy](https://github.com/AutonomyLab/bebop_autonomy) and you `rosbag record -a` your experiments
<!-- or [drone_dev]() --!>


