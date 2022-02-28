% This function plots the positive rate for each country in a fingure
function [] = Group37Exe5Fun3(pos_greece,pos_iceland,pos_ireland,pos_italy,pos_hungary,pos_germany)
    figure(1)
    plot(flip(pos_greece));
    hold on
    plot(flip(pos_iceland));
    hold on
    plot(flip(pos_ireland));
    hold on
    plot(flip(pos_italy));
    hold on
    plot(flip(pos_hungary));
    hold on
    plot(flip(pos_germany));
    legend('Greece','Iceland','Ireland','Italy','Hungary','Germany');
    xlabel('Week');
    ylabel('Positive Rate');
    hold off
end

