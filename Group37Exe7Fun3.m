function [position] = Group37Exe7Fun3(Data,Date,Country)
    
    positions_date  = find(strcmp(Data.year_week,Date));
    positions_national = find(strcmp(Data.level,'national'));
    final = intersect(positions_date,positions_national);
    country_pos = find(strcmp(Data.country,Country));
    position = intersect(country_pos,final);
end

