function tests = test_add_numbers_matlab
tests = functiontests(localfunctions);
end

function test_smoke(testCase)
a = 1;
b = 3;
add_numbers(a,b);
end

function test_unit(testCase)

% set up
a = 1;
b = 3;

c = add_numbers(a,b);

% test
expected_output = 4;

assert(numel(c) == 1)
assert(c == expected_output);

% tear down

end

function test_unit_2(testCase)

% set up
a = -1;
b = 3;

c = add_numbers(a,b);

% test
expected_output = 2;

assert(numel(c) == 1)
assert(c == expected_output);

end
