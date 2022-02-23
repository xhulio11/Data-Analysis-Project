    function [max_pos_rate] = Group37Exe1Pro2(Data,Date)
    
    % An array which will store the Maxium Positive rate for each country
    max_pos_rate = zeros(25,1);
    
    % Finding the the positions of Date = 2020-W45 (Only national)
    positions_date  = find(strcmp(Data.year_week,Date));
    positions_national = find(strcmp(Data.level,'national'));
    
    final = intersect(positions_date,positions_national);
    % Deleting the rows of Greece, Liechtenstein, Luxembourg, Malta, Romania
    
    Greece = find(strcmp(Data.country,'Greece'));
    Liechtenstein = find(strcmp(Data.country,'Liechtenstein'));
    Luxembourg = find(strcmp(Data.country,'Luxembourg'));
    Malta = find(strcmp(Data.country,'Malta'));
    Romania = find(strcmp(Data.country,'Romania'));
    
    final = setdiff(final,Greece);final = setdiff(final,Liechtenstein);
    final = setdiff(final,Luxembourg);final = setdiff(final,Malta);
    final = setdiff(final,Romania);
    j = 1;
    n = size(final,1);
    % Finding the maximum positive rate for each country begining from
    % position found in final array and ending two position = final + 5
    for i=1:n
        temp_array = Data.positivity_rate(final(i):final(i)+5);
        max_pos_rate(j) = max(temp_array);
        j = j + 1;
    end
end

