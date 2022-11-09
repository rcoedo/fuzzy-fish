function __fuzzy_git_commit
  git log --pretty=format:'%h %<(15,trunc)%an   %<(60,trunc)%s   %ah' \
  | __fuzzy_find --with-nth 2.. \
  | awk '{print $1}' \
  | read tempvar

  if [ $tempvar ]
    commandline -i $tempvar" "
  end
end
