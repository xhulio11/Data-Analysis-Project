function [pos_rate] = Group37Exe5Fun2(Data,country,Date)

    positions_date  = find(strcmp(Data.year_week,Date));
    positions_national = find(strcmp(Data.country,country));
    positions_national2 = find(strcmp(Data.level,'national'));
    position = intersect(positions_date,positions_national);
    position = intersect(position,positions_national2);
   
    pos_rate = zeros(12,1);
    
    for i=position:-1:(position-12)
        pos_rate(position -i + 1) = Data.positivity_rate(i);
    end    
end

