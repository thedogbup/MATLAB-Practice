clear, clc, format compact, close all
%==[Flowerbox]=================
%| Filename: SolarTime.m      |___
%| Purpose: Calculates solar time |
%| bup                        ____|
%| 5/28/20                    |
%|____________________________|

disp("This app allows you to display the solar time for a given location.");

longitude = input("Enter your chosen longitude in a range of [-180, 180]: ");
while(longitude < -180 || longitude > 180)
    longitude = input("Please enter a valid longitude in a range of [-180, 180]: ");
end

utcO = input("Type the specified UTC offset as a decimal from -12:00 to +14:00 (adding 0.5 for a 30 minute offset): ");

while(utcO < -12 || utcO > 14)
    utcO = input("Please enter a valid UTC offset as a decimal from -12:00 to +14:00 (adding 0.5 for a 30 minute offset): ");
end

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
    timeIn = datetime(now.Year,now.Month,now.Day,now.Hour,now.Minute,now.Second,'TimeZone',tzone,...
    'Format','dd-MMM-yyyy HH:mm:ss Z');
else
    dateIn = input("Type 0 for the displayed date now or enter a date (dd-MMM-yyyy) at or after 1972: ");
    while(str2double(substr(dateIn, 7, 11)) < 1972)
        dateIn = input("Please enter a vaid date (dd-MMM-yyyy) with a valid year at or after 1972: ");
    end
    if(dateIn == 0)
        dateIn = datetime("today");
    end
end

