#!/bin/bash
echo "Extracting .bag files..."
rostopic echo -b Voo.bag -p /bebop/cmd_vel > cmd_vel.txt

rostopic echo -b Voo.bag -p /bebop/joy > joy.txt
sed -i "s/,,/,0,/" ./joy.txt

rostopic echo -b Voo.bag -p /bebop/transf_position > transf_position.txt
sed -i "s/,,,/,0,0,/" ./transf_position.txt

rostopic echo -b Voo.bag -p /bebop/waypoint > waypoint.txt
sed -i "s/,,,/,0,0,/" ./waypoint.txt

rostopic echo -b Voo.bag -p /bebop/odom > odom.txt
sed -i "s/odom,base_link/0,0/" ./odom.txt

if rostopic list -b Voo.bag | grep -q 'vicon'; then
	rostopic echo -b Voo.bag -p /vicon/bebop/bebop > vicon.txt
	sed -i "s/,\/world,vicon\/bebop\/bebop,/,0,0,/" ./vicon.txt
fi
echo "Done"
