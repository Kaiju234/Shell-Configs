eval "$(zoxide init bash)"
. ~/.config/synth-shell/synth-shell-prompt.sh
source ~/.bash-powerline.sh

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

eval "$(starship init bash)"

[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
#        ____
#       ||K ||
#       ||__||
#       |/__\|
#
# kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

. "$DIR/.k/k_aliases.sh"
. "$DIR/.k/k_functions.sh"
. "$DIR/.k/k_environment_variables.sh"
. "$DIR/.k/k_sources.sh"
. "$DIR/.k/bashmarks.sh"


echo "source ~/.aliasme/aliasme.sh" >> ~/.bash_profile
source ~/.config/up/up.sh
source ~/.config/up/up.sh