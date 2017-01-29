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
