function test_Analyse

    % set up
    cwd = pwd;

    subject_folder = '/home/remi/github/matlab_folder/legacy/data/sub-01';
    output_figure = fullfile(subject_folder, 'Behavioral', 'Figures.ps');
    output_mat_file = fullfile(subject_folder, 'Behavioral', 'Results_PIEMSI_1.mat');

    if exist(output_mat_file, 'file')
        delete(output_mat_file);
    end
    if exist(output_figure, 'file')
        delete(output_figure);
    end
    close all;

    % tests
    cd(subject_folder);
    Analyse();

    % check created files
    assert(exist(output_figure, 'file') == 2);
    assert(exist(output_mat_file, 'file') == 2);

    % check one value
    results = load(output_mat_file, 'NbValidTrials');
    assert(results.NbValidTrials == 707);

    % check all values
    expected_results_mat_file = fullfile(subject_folder, 'Behavioral', 'Results_PIEMSI_1.mat');
    expected = load(expected_results_mat_file);
    results = load(output_mat_file);

    assertEqual(results, expected);

    % tear down
    delete(output_figure);
    delete(output_mat_file);
    delete(fullfile(subject_folder, 'Behavioral', 'Fig*.eps'));
    cd(cwd);
    close all;

end
