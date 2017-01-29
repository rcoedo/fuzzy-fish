function icd
    tree --noreport -d -i -L 1 $CDPATH | grep -v '\(Users\|\.\)' | __fuzzy_find | read tempvar
    if [ $tempvar ]
        cd $tempvar
    end
end
