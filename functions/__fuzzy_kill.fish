function __fuzzy_kill
    ps -fea | awk '{$1=$3=$4=$5=$6=$7=""; print $0}' | __fuzzy_find | awk '{print $1}' | tr "\n" " " | read -l tempvar
    if test (count $tempvar) -gt 0
        kill $tempvar
    end
end
