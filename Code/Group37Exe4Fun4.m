% This function handles the histograms for each country
function [] = Group37Exe4Fun4(m,Country,i)
    figure(i)
    histogram(m);
    x = [mean(m) mean(m)];
    y = [0, 200];
    title(Country);
    ylabel('Frequency');
    xlabel('Mean diff between 2020-2021');
    hold on
    line(x,y,'LineWidth', 2, 'Color', 'r');
    hold off
end

