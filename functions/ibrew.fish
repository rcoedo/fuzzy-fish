function ibrew
    if test (count $argv) = 1
        brew search $argv[1] | __fuzzy_find | read tempvar
        if [ $tempvar ]
            brew install $tempvar
        end
    end
end
