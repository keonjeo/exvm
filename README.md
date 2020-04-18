# exvm

```
                                                 ____
       ,.---,.  ,--,    ,--,                   ,'  , `.
     ,'   .' | |.  \   / .`|      ,---.     ,-+-,.' _ |
    ,---.'   | ; \ `\ /' / ;     /__./|  ,-+-. ;   , ||
    |   |   .' `. \  /  / .',---.;  ; | ,--.'|'   |  ;|
    :   :  |-,  \  \/  / .//___/ \  | ||   |  ,', |  ':
    :   |  ;/|   \  \.'  / \   ;  \ ' ||   | /  | |  ||
    |   :   .'    \  ;  ;   \   \  \: |'   | :  | :  |,
    |   |  |-,   / \  \  \   ;   \  ' .;   . |  ; |--'
    '   :  ;/|  ;  /\  \  \   \   \   '|   : |  | ,
    |   |    \./__;  \  ;  \   \   `  ;|   : '  |/
    |   :   .'|   : / \  \  ;   :   \ |;   | |`-'
    |   | ,'  ;   |/   \  ' |    '---" |   ;/
    `----'    `---'     `--`           '---'

```


About
========
exvm is a version manager for elixir, which is inspired by rvm, nvm and gvm tool.

Features
========
* Install/Uninstall Elixir versions with `exvm install [tag]` where tag is "1.10.2"
* List latest release tags with `exvm listall`. Use `--all` to list weekly as well.

Installing Exvm
==========

To install:

    bash < <(curl -s -S -L https://raw.githubusercontent.com/keonjeo/exvm/master/exvm-installer)

Or if you are using zsh just change `bash` with `zsh`

Installing Elixir
=============
    exvm install 1.10.2
    exvm use 1.10.2 [--default]

Once this is done elixir will be in the path and ready to use.
