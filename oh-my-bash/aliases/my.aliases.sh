#! bash oh-my-bash.module
#  -----------------------------------------------------------------------------

# All --------------------------------------------------------------------------
# edit bashrc; MAC -- make sure .bash_profile sources .bashrc
alias edit='vim ~/.bashrc ~/.oh-my-bash/aliases/my.aliases.sh'
#alias Vedit='vim ~/.vim_runtime/vimrcs/extended.vim ~/.vim_runtime/vimrcs/plugins_config.vim'
alias Vedit='pushd ~/.config/nvim && vim . && popd'
# source bash_profile
alias hello='source ~/.bashrc'
alias yeet="rm -rf $1"
alias c='clear'
alias h='history'
alias tree='tree --dirsfirst -F'
function hg() {
    history | grep "$1";
}
# Set default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Mac --------------------------------------------------------------------------
source /Users/jogata/src/alacritty/extra/completions/alacritty.bash
eval "$(/opt/homebrew/bin/brew shellenv)"
alias v="/usr/bin/vim"
alias vim="nvim"
# tmux shortcut script
alias tm='sh ~/Documents/GitHub/my_collections/my_dotfiles/tmux/tmux_new_or_attach.sh'
# print passwords
alias passwords='cat ~/Documents/passwords'
# Terminal edit: edit alacritty terminal config file
alias Tedit='vim ~/.config/alacritty/alacritty.yml'
# ssh targets
alias merlot="ssh -X ogataj@merlot.bis.vcu.edu"
alias huff="ssh ogataj@huff.hprc.vcu.edu"
alias fenn="ssh ogataj@fenn.vcu.edu"
alias group="ssh ogataj@group.vipbg.vcu.edu"
# makes a bash script with options
# $1 should be desired file name
# $2 should can "sge" or "slurm"
# $3 should can be "options" if options template desired
function mkbash() {
   sh /Users/jogata/Documents/GitHub/stuff_that_might_be_useful_later/bash/mkbash.sh $1 $2 $3;
}
# open declude ranges notebook
alias notebook="sh /Users/jogata/Documents/GitHub/my_collections/notebooks/notebook.sh"
# make rmd template
alias mkRmd="cat /Users/jogata/Documents/GitHub/my-dotfiles/scripts/Rmd_template.Rmd >> $1"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jogata/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jogata/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jogata/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jogata/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

