function icask
    if test (count $argv) = 1
        brew cask search $argv[1] | grep -v "==>" | __fuzzy_find | read tempvar
        if [ $tempvar ]
            brew cask install $tempvar
        end
    end
end
