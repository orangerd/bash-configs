################################################################################
# $HOME/.bashrc
################################################################################
# Initial load for bash
# Non-interactive shell - just quit
if [[ $- != *i* ]]; then
	return
fi

# Interactive shell - continue
# Source the environment file
[[ -f ${HOME}/.bash_env ]] && source ${HOME}/.bash_env

# Source the .alias file
[[ -f ${HOME}/.bash_alias ]] && source ${HOME}/.bash_alias

# Source the .bind file
[[ -f ${HOME}/.bash_bind ]] && source ${HOME}/.bash_bind

# Source the .functions file
[[ -f ${HOME}/.bash_functions ]] && source ${HOME}/.bash_functions

# Source the .bash-completion file
[[ -f /etc/bash_completion ]] && source /etc/bash_completion

# This line was appended by KDE
# Make sure our customised gtkrc file is loaded.
export GTK2_RC_FILES=$HOME/.gtkrc-2.0
