#!/bin/bash

_complete_project_names() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ./projects)" -- $cur) )
}

complete -F _complete_project_names project_path

read -e -p "Enter the project path: " project_path

echo $project_path