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

sel = input("Type 0 for the time now or anything else to enter a custom time: ");

if(sel == 0)
    now = dateTime("now");
    timeIn = datetime(now.Year,now.Month,now.Day,now.Hour,now.Minute,now.Second,'TimeZone','America/Los_Angeles',...
    'Format','dd-MMM-yyyy HH:mm:ss Z');
end

