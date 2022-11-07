function __fuzzy_package_json_script
  if test -e "package.json"
    jq '.scripts | keys[]' package.json | tr -d '"' | __fuzzy_find | read tempvar

    if [ $tempvar ]
      commandline -i $tempvar
    end
  end
end
