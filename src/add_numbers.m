function c = add_numbers(a,b)

if ~isnumeric(a)
    err.message = 'a must a scalar value.';
    err.identifier = 'add_numbers:ScalarExpected';
    error(err);
end

c=a+b;
end

