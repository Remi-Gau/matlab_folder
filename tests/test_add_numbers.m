function test_suite = test_add_numbers %#ok<STOUT>
    try % assignment of 'localfunctions' is necessary in Matlab >= 2016
        test_functions = localfunctions(); %#ok<NASGU>
    catch % no problem; early Matlab versions can use initTestSuite fine
    end
    initTestSuite;
end

function test_smoke()
a = 1;
b = 3;
add_numbers(a,b);
end

function test_unit()

% set up
a = 1;
b = 3;

c = add_numbers(a,b);

% test
expected_output = 4;

assert(numel(c) == 1)
assertEqual(c, expected_output);

% tear down

end

function test_unit_2()

% set up
a = -1;
b = 3;

c = add_numbers(a,b);

% test
expected_output = 2;

assert(numel(c) == 1)
assertEqual(c, expected_output);

% tear down

end

% FIXME
function test_unit_3()

% set up
a = 'a';
b = 3;

assertExceptionThrown( @()add_numbers(a,b), 'add_numbers:ScalarExpected');

end