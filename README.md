# Fuzzy

Fuzzy functions for the fish shell.

## Install

Install as a fisherman plugin

```
fisher rcoedo/fuzzy-fish
```

## Usage

| function                    | Description                                               | Example                |
| --------------------------- | ----------------------------------------------------------| -----------------------|
| `ibrew <search string>`     | Searches the homebrew repository for something to install | `ibrew fzf`            |
| `icask <search string>`     | Searches the cask repository for something to install     | `icask chrome`         |
| `icd`                       | cd into the directories in `pwd` and the ones in $CDPATH  | `icd`                  |
| `ifind`                     | Searches filenames recursively.                           | `ifind`                |
| `ihistory`                  | Searches the command history.                             | `ihistory`             |
| `ik`                        | Searches a process to `kill`                              | `ikill`                |
| `ips`                       | Searches a pid to insert in the current line.             | `ips`                  |
| `ircd`                      | cd into the directories `pwd`, recursive version of icd   | `icd`                  |
