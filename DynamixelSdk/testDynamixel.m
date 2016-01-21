
dynamixel_id = 5;
o  = MyDynamixel(dynamixel_id);
% o.viewSupportFcn();
o.portNum = 16;
o.baudNum = 1;
o.init()

o.writeAngle(5,deg2rad(100));

% o.Exit();