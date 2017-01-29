function ibrew
    if test (count $argv) = 1
        brew search $argv[1] | __fuzzy_find | read tempvar
        if [ $tempvar ]
            brew install $tempvar
        end
    end
end

function icask
    if test (count $argv) = 1
        brew cask search $argv[1] | grep -v "==>" | __fuzzy_find | read tempvar
        if [ $tempvar ]
            brew cask install $tempvar
        end
    end
end

function icd
    tree --noreport -d -i -L 1 $CDPATH | grep -v '\(Users\|\.\)' | __fuzzy_find | read tempvar
    if [ $tempvar ]
        cd $tempvar
    end
end

function ifind
    set dir $argv
    if test (count $argv) -gt 2 -o (count $argv) -lt 1
        set dir (pwd)
    end
    find $dir | __fuzzy_find | tr "\n" " " | read tempvar
    if [ $tempvar ]
        commandline -i $tempvar
    end
end

function ihistory
    history | __fuzzy_find | read tempvar
    if [ $tempvar ]
        commandline $tempvar
    end
end

function ik
    ps -fea | awk '{$1=$3=$4=$5=$6=$7=""; print $0}' | __fuzzy_find | awk '{print $1}' | tr "\n" " " | read -l tempvar
    if test (count $tempvar) -gt 0
        kill $tempvar
    end
end

function ips
    ps -fea | awk '{$1=$3=$4=$5=$6=$7=""; print $0}' | __fuzzy_find | awk '{print $1}' | tr "\n" " " | read tempvar
    if [ $tempvar ]
        commandline -i $tempvar
    end
end

function ircd
    set dir $argv
    if test (count $argv) -gt 2 -o (count $argv) -lt 1
        set dir (pwd)
    end
    #find $dir -type d | __fuzzy_find | read tempvar
    find $dir -type d -not -path "*/.*/*" -not -name ".*" | __fuzzy_find | tr -d "\n" | read tempvar
    if [ $tempvar ]
        cd $tempvar
    end
end
