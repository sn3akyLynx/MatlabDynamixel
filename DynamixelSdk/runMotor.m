while 1
    k = input('angle=: ');
    if strcmp(k,'q')
        break;
    end
    o.writeAngle('id',5,'deg',k);
    o.writeAngle('id',16,'deg',k);
end