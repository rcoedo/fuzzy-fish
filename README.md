# Fuzzy

Fuzzy functions for the fish shell.

## Install

Install as a fisherman plugin

```
fisher rcoedo/fuzzy-fish
```

## Usage

| function                       | Description                                               | Example                 |
| ------------------------------ | --------------------------------------------------------- | ----------------------- |
| `__fuzzy_brew <search string>` | Searches the homebrew repository for something to install | `__fuzzy_brew fzf`      |
| `__fuzzy_cask <search string>` | Searches the cask repository for something to install     | `__fuzzy_cask chrome`   |
| `__fuzzy_cd`                   | cd into the directories in `pwd` and the ones in $CDPATH  | `__fuzzy_cd`            |
| `__fuzzy_file`                 | Searches filenames recursively.                           | `__fuzzy_file`          |
| `__fuzzy_history`              | Searches the command history.                             | `__fuzzy_history`       |
| `__fuzzy_kill`                 | Searches a process to `kill`                              | `__fuzzy_kill`          |
| `__fuzzy_ps`                   | Searches a pid to insert in the current line.             | `__fuzzy_ps`            |
| `__fuzzy_rcd`                  | cd into the directories `pwd`, recursive version of icd   | `__fuzzy_cd`            |
