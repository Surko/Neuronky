function chngNum = getRoundedNumber( num )

if num < 0.5
    chngNum = 0;
else
    if num >= 9
        chngNum = 9;
    else
        chngNum = round(num);    
    end
end

end

