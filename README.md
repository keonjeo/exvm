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
EXVM is a version manager for elixir, which is inspired by rvm, nvm, gvm and exvm tool.

Features
========
* Install/Uninstall Elixir versions with `exvm install [tag]` where tag is "1.10.2"
* List latest release tags with `exvm listall`.

Installing EXVM
==========

To install:

    bash < <(curl -s -S -L https://raw.githubusercontent.com/keonjeo/exvm/master/exvm-installer)

Or if you are using zsh just change `bash` with `zsh`

Installing Elixir
=============
    exvm install 1.10.2
    exvm default 1.10.2
    exvm use 1.10.2

Once this is done Elixir will be in the path and ready to use.

How to use EXVM
=============

Usage: exvm [command]

    Description:
    EXVM is the Elixir Version Manager.

    Commands:
    version       - print the exvm version number
    help          - display this usage text
    list_remote   - list available versions
    install       - install elixir version
    uninstall     - uninstall elixir version
    remove        - remove the whole stuff related to this version
    list          - list installed elixir versions
    default       - set an elixir version as system default
    use           - select an elixir version to use
    download      - download elixir tar file
    system        - leaving only the system version of ELIXIR available
    implode       - completely remove exvm