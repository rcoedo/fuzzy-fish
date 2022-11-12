function __fuzzy_lsof
    lsof -iTCP -sTCP:LISTEN -n -P | awk '{$3=$4=$5=$6=$7=$8=""; printf "%10s\t%7s %30s\n", $1, $2, $9}' | __fuzzy_find | awk '{print $2}' | tr "\n" " " | read tempvar
    if [ $tempvar ]
        commandline -i $tempvar
    end
end
