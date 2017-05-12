function __fuzzy_git_branch
    git branch | __fuzzy_find | xargs git checkout
end
