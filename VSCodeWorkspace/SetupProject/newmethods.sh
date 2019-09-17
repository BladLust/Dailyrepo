#!/bin/sh
echo "Timethods initialized. Use timhelp to show Timethods"

# building the help program, use HECHO to store message
timhelp(){
    echo $TMD_OPVSC;
    echo $TMD_LL;
    echo $TMD_NEWVSC;
}

# A function that shows existing vscode projects and let you select one
alias opvsc='sh ~/GitRepo/VSCodeWorkspace/SetupProject/launchvscode.sh'
TMD_OPVSC='opvsc\t\tShow vscode projects and boot VSCode'

alias newvsc='sh ~/GitRepo/VSCodeWorkspace/SetupProject/newvsproject.sh'
TMD_NEWVSC='newvsc\t\tStart new vscode project with default C++ settings'

alias ll="ls --color -la"
TMD_LL="ll\t\tEquals to 'ls -la'"
