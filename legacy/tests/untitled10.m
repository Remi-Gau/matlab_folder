try
    a = 1 + 1;
    error('some error');
    b = 2 + 2;

catch

    b = 4 + 4;

    lasterror;
end
