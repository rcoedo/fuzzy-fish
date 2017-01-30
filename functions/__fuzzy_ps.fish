function __fuzzy_ps
    ps -fea | awk '{$1=$3=$4=$5=$6=$7=""; print $0}' | __fuzzy_find | awk '{print $1}' | tr "\n" " " | read tempvar
    if [ $tempvar ]
        commandline -i $tempvar
    end
end
