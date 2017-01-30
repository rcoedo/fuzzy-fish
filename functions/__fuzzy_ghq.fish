function __fuzzy_ghq
    if type -q ghq
        ghq list | __fuzzy_find | read tempvar
        if test (count $tempvar) -gt 0
            cd (ghq root)/$tempvar
        end
    end
end
