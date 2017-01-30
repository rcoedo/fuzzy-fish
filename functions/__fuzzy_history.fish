function __fuzzy_history
    history | __fuzzy_find | read tempvar
    if [ $tempvar ]
        commandline $tempvar
    end
end
