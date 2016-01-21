classdef MyDynamixel < handle
    %MYDYNAMIXEL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        portNum;
        baudNum;
        libName = 'dynamixel'
        offset = 0;
        x;
        xMin = 0;
        xMax = deg2rad(300);
        ID;
        Instruction;
    end
    
    methods
        function MD = MyDynamixel(id)
            if(nargin > 0)
                MD.ID = id;               
            end
            MD.Instruction.PING = hex2dec('01');
            MD.Instruction.READ_DATA = hex2dec('02');
            MD.Instruction.WRITE_DATA = hex2dec('03');
            MD.Instruction.REG_WRITE = hex2dec('04');
            MD.Instruction.ACTION = hex2dec('05');
            MD.Instruction.RESET = hex2dec('06');
            MD.Instruction.SYNC_WRITE = hex2dec('83');
            loadlibrary('dynamixel', 'dynamixel.h')
        end
        function Exit(MD)
            calllib('dynamixel','dxl_terminate');
            unloadlibrary(MD.libName);
        end
        function init(MD,port,baud)
            if (nargin > 1)
                MD.portNum = port;
                MD.baudNum = baud;
                res = calllib(MD.libName, 'dxl_initialize',MD.portNum, MD.baudNum);
                if res == 0
                    fprintf('Cannot init dynamixel \n');
                end
            else
                res = calllib(MD.libName, 'dxl_initialize',MD.portNum, MD.baudNum);
                if res == 0
                    fprintf('Cannot init dynamixel \n');
                end
            end
            
        end
        function viewSupportFcn(MD)
           
            libfunctions(MD.libName);
        end
        function writeAngle(MD,id,angle)
            d = rad2deg(angle + MD.offset);
            d = uint16(d*1023/300);
            if d < 0 
                d = 0;
            end
            if d > 1023
                d = 1023;
            end
            calllib('dynamixel','dxl_write_word',id,30,d);
        end
        function ledOn(MD)
            calllib(MD.libName,'dxl_write_byte',MD.ID,ControlTable.LED,1);
        end
        function ledOnReg(MD)
            calllib('dynamixel','dxl_set_txpacket_id',MD.ID);
            calllib('dynamixel','dxl_set_txpacket_length',4);
            calllib('dynamixel','dxl_set_txpacket_instruction',...
                MD.Instruction.REG_WRITE);
            calllib('dynamixel','dxl_set_txpacket_parameter',0, ControlTable.LED);
            calllib('dynamixel','dxl_set_txpacket_parameter',1, 1);
            calllib('dynamixel','dxl_tx_packet');
            
        end
        function ledOff(MD)
            calllib(MD.libName,'dxl_write_byte',MD.ID,ControlTable.LED,0);
        end
        function writeAngleReg(MD)
            
        end
        function triggerAction(MD)
            calllib('dynamixel','dxl_set_txpacket_parameter',0, 0);
            calllib('dynamixel','dxl_set_txpacket_parameter',1, 0);
            calllib(MD.libName,'dxl_set_txpacket_id',254);
            calllib('dynamixel','dxl_set_txpacket_length',2);
            calllib('dynamixel','dxl_set_txpacket_length',MD.Instruction.ACTION);
            calllib('dynamixel','dxl_tx_packet');
        end
    end
    
end

