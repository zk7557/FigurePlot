xValue = 1:10;
yPlot = xValue.^2;

yErrorbar = 100 ./ xValue;
yErrorbarSize = ones(1,10) * 5;

yScatter = xValue .* xValue;

yBar = 10 - xValue;

yViolin = rand(10,10) .* xValue *5;


figure(99); hold on;

colororder(['k'; 'k']);	%y-axes colors


yyaxis left;
% plot
plot(xValue, yPlot,  'LineStyle','-', 'LineWidth', 2, 'Color', 'r');

% errorbar
errorbar(xValue, yErrorbar, yErrorbarSize, 'LineStyle', 'none', 'LineWidth', 2, 'Color', 'r');

% bargraph
bar(xValue, yBar, "FaceColor", 'g', "LineWidth", 2, 'EdgeColor','g', 'FaceAlpha', 0.5);

% violin plot
violinplot(xValue, yViolin, 'DensityWidth', 0.8, 'DensityDirection','both', 'LineWidth', 1, 'FaceColor', 'c');

ylim([0,100]);
yticks([0, 30, 50, 100, 110]);
ylabel("left label");
set(gca, 'yColor', 'r');


yyaxis right;
% scatter
scatter(xValue, yScatter, 50, 'b', 'filled');
set(gca, 'YScale', 'log');
ylabel("right label");
set(gca, 'yColor', 'b');


xlim([0, 11]);
xlabel("X label");
set(gca, 'XColor', 'k');


legend({'legend1'; 'legend2'; 'legend3'}, "LineWidth", 1);

set(gca, 'FontSize', 18);
set(gca, 'LineWidth', 1.5);

% output as png
% print(gcf, 'plot.png', '-dpng', '-r300');


MatlabDefaultColor= ...
[0 0.4470 0.7410;
0.8500 0.3250 0.0980;
0.9290 0.6940 0.1250;	
0.4940 0.1840 0.5560;	
0.4660 0.6740 0.1880;
0.3010 0.7450 0.9330;
0.6350 0.0780 0.1840];
