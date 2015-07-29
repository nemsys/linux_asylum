#!/usr/bin/env bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#based on https://github.com/paulmooring/bashrc
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi


### load custom bash config files
public_bashrc_dir='.bashrc.d'
private_bashrc_dir="${public_bashrc_dir}/.private"

# list is used to control the load sequence
files_to_load=(
    env_variables.sh
    shell_settings.sh
    ssh.sh
    colors.sh
    history.sh
    aliases.sh
    completions.sh
    git-completion.sh
    functions.sh
    window_title.sh
    prompt.sh
    custom_bashrc.sh
)

for bash_file in "${files_to_load[@]}"; do
    # load public files
    if [ -f "${HOME}/${public_bashrc_dir}/$bash_file" ]; then
        source "${HOME}/${public_bashrc_dir}/$bash_file"
    fi
    # load private files
    if [ -f "${HOME}/${private_bashrc_dir}/$bash_file" ]; then
        source "${HOME}/${private_bashrc_dir}/$bash_file"
    fi
done


unset bash_file files_to_load

welcome
