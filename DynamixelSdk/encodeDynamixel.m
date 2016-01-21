if exist('MyDynamixel.p','file')
    fprintf('Deleting files...\n');
    pause(0.25);
    delete 'MyDynamixel.p'
    fprintf('Deleted\n');
    
end
fprintf('Creating Library...\n');
pcode MyDynamixel.m
fprintf('Created...\n');
x = pwd;
des = 'E:\MatlabViet\matlab_ws\matlabProjects\sharedLibrary';
copyfile('MyDynamixel.p',des);