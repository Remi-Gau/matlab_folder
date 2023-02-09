function handle = plot_line(x, y)

    handle = figure('name', 'line');

    plot(x, y);

    xlabel('x values');
    ylabel('y values');

    print(gcf, 'my_figure.png', '-dpng');

end
