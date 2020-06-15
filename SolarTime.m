clear, clc, format compact, close all
%==[Flowerbox]=================
%| Filename: SolarTime.m      |___
%| Purpose: Calculates solar time |
%| bup                        ____|
%| 5/28/20                    |
%|____________________________|

disp("This app allows you to display the solar time for a given location.");

longitude = input("Enter your chosen longitude in a range of [-180, 180]: ");

utcO = input("Type the specified UTC offset as a decimal from -12:00 to +14:00 (adding 0.5 for a 30 minute offset): ");

if(utcO < 0)
        tzone = "-";
    else
        tzone = "+";
end
if(abs(utcO) < 10)
    tzone = tzone + '0';
end
tzone = tzone + floor(abs(utcO)) + ':';

if(abs(fix(utcO) - utcO) * 60 < 10)
    tzone = tzone + '0';
end
tzone = tzone + abs(fix(utcO) - utcO) * 60;

sel = input("Type 0 for the displayed time now or anything else to enter a custom time: ");

now = datetime("now");

if(sel == 0)
    allIn = datetime(now.Year,now.Month,now.Day,now.Hour,now.Minute,now.Second,'TimeZone',tzone,...
    'Format','dd-MM-yyyy HH:mm:ss Z');
else
    timeIn = [now.Year,now.Month,now.Day,now.Hour,now.Minute,now.Second];
    ymd = input('Type 0 for the displayed date now or enter a date (dd-MM-yyyy) at or after 1972: ', 's');
    if(ymd ~= 0)
        timeIn(1) = str2double(ymd(7:10));
        timeIn(2) = str2double(ymd(4:5));
        timeIn(3) = str2double(ymd(1:2));
    end
    hms = input('Type 0 for the displayed time now or enter a time (HH:mm:ss): ', 's');
    if(hms ~= 0)
        timeIn(4) = str2double(hms(1:2));
        timeIn(5) = str2double(hms(4:5));
        timeIn(6) = str2double(hms(7:8));
    end
    
    allIn = datetime(strcat(string(datetime(timeIn), " ", tzone)), 'InputFormat', 'dd-MM-yyyy HH:mm:ss ZZZZZ');
end



