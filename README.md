

# Zsh History Convertor
This script can be useful for who wants to add a list of command history from a .txt file to Zsh shell.

# How To Use
variable that show path to file which include history of commands.:
```shell
HISTORY_FILE="path/to/history_file.txt" 
```
>Tips: **history_file.txt** is the input of this script that contains the commands which are output of history command in a shell like below sample:

```shell
 1  command1
 2  command2
 3  command3
 .
 .
 .
 1000 command1000
 ```



define the path to the file which you want export the edited commands (as zsh_history template) to save.
```shell
EDITED_HISTORY_FILE="path/to/edited_history_file.txt"
```
date that Specifies when first command of the list executed.The rest of the commands in each line of the list will be automatically dated respectively.
```shell
INITIAL_DATE='2021-08-13 00:00:00 EDT'
```

>Tips: after run the script and create edited_history_file.txt as its output, next step is open the history file of Zsh shell in **~/.zsh_history** path with desired editor and paste the edited_history_file.txt content in proper place of commands history where you want. In the end it is needed to **source ~/.zsh_history**