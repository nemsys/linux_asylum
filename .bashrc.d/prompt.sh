#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# Customize terminal prompt                                          #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
############################# FUNCTIONS ##############################
_unset_vars() {
  unset fillsize cut temp TERMWIDTH pwd_git host user
  unset conf_dir cprompt
  unset version rprompt
  unset branch gprompt stat
}
######################################################################
host=$(hostname -s)
user=$(whoami)

TERMWIDTH=${COLUMNS}

PS1="\[${LIGHTCYAN}\]${user}\[${NC}\]@\[${BROWN}\]${host}\[${NC}\]->"

_unset_vars
_bash_history_sync

export PS1
