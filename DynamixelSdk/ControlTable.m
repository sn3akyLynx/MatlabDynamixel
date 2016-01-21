classdef ControlTable
    %CONTROLTABLE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties(Constant)
        ModelNumber_L = 0;              %RD
        ModelNumber_H = 1;              %RD
        FirmwareVersion = 2;            %RD
        ID = 3;                         %RD,WR
        BaudRate = 4;                   %RD,WR
        ReturnDelayTime = 5;            %RD,WR
        CWAngleLimit_L = 6;             %RD,WR
        CWAngleLimit_H = 7;             %RD,WR
        CCWAngleLimit_L = 8;            %RD,WR
        CCWAngleLimit_H = 9;            %RD,WR
        HighestLimitTem  = 11;          %RD,WR
        LowestLimitVoltage = 12;        %RD,WR
        HighestLimitVoltage = 13;       %RD,WR
        MaxTorque_L = 14;               %RD,WR
        MaxTorque_H = 15;               %RD,WR
        StatusReturnLevel = 16;         %RD,WR
        AlarmLED = 17;                  %RD,WR
        AlarmShutdown = 18;             %RD,WR
        DownCalib_L = 20;               %RD
        DownCalib_H = 21;               %RD
        UpCalib_L = 22;                 %RD
        UpCalib_H = 23;                 %RD
        TorqueEnable = 24;              %RD,WR
        LED = 25;                       %RD,WR
        CWMargin = 26;                  %RD,WR
        CCWMargin = 27;                 %RD,WR
        CWSlope = 28;                   %RD,WR
        CCWSlope = 29;                  %RD,WR
        GoalPos_L = 30;                 %RD,WR
        GoalPos_H = 31;                 %RD,WR
        MovingSpeed_L = 32;             %RD,WR
        MovingSpeed_H = 33;             %RD,WR
        TorqueLimit_L = 34;             %RD,WR
        TorqueLimit_H = 35;             %RD,WR
        PresentPos_L = 36;              %RD
        PresentPos_H = 37;              %RD
        PresentSpeed_L = 38;            %RD
        PresentSpeed_H = 39;            %RD
        PresentLoad_L = 40;             %RD
        PresentLoad_H = 41;             %RD
        PresentVoltage = 42;            %RD
        PresentTem = 43;                %RD
        RegisteredInstruction = 44;     %RD,WR
        Moving  = 46;                   %RD
        Lock = 47;                      %RD,WR
        Punch_L = 48;                   %RD,WR
        Punch_H = 49;                   %RD,WR
        
    end
    
    methods
    end
    
end

