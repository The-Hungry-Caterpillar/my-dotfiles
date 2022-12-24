#! bash oh-my-bash.module
#  ---------------------------------------------------------------------------

# merlot "HPC"
alias merlot="ssh -X ogataj@merlot.bis.vcu.edu"

# Huff "HPC", this one sucks. SLURM.
alias huff="ssh ogataj@huff.hprc.vcu.edu"

# Fenn HPC, this is the best. Sun Grid Engine.
alias fenn="ssh ogataj@fenn.vcu.edu"

# Group HPC, for ARC.
alias group="ssh ogataj@group.vipbg.vcu.edu"

alias vim="nvim"

# for cleaning bed files
function makeBed() {
	cut -f1,2,3 $1 > temp && mv temp $1;
}

# makes a bash script with options
# $1 should be desired file name
# $2 should can "sge" or "slurm"
# $3 should can be "options" if options template desired
function mkbash() {
   sh /Users/jogata/Documents/GitHub/stuff_that_might_be_useful_later/bash/mkbash.sh $1 $2 $3;
}

function mkR() {
  echo "#!/usr/local/bin/Rscript" > $1
  echo "shhh <- suppressPackageStartupMessages # It's a library, so shhh!" >> $1
  echo "" >> $1
  vim $1
}

# open declude ranges notebook
alias notebook="sh /Users/jogata/Documents/GitHub/my_collections/notebooks/notebook.sh"

# e.g. "hg conda" looks through history of commands with word "conda"
function hg() {
    history | grep "$1";
}

# make rmd template
alias mkRmd="cat /Users/jogata/Documents/GitHub/my-dotfiles/scripts/Rmd_template.Rmd >> $1"

# goodbye
alias yeet="rm -rf $1"

# Press c to clear the terminal screen.
alias c='clear'

# Press h to view the bash history.
alias h='history'

# prints directory structure
alias tree='tree --dirsfirst -F'

# source bash_profile
alias hello='source ~/.bash_profile'
# edit bash_profile
alias edit='vim ~/.bash_profile'
# edit vimrc
alias Vedit='vim ~/.vim_runtime/vimrcs/extended.vim ~/.vim_runtime/vimrcs/plugins_config.vim'
# Terminal edit: edit alacritty terminal config file
alias Tedit='vim ~/.config/alacritty/alacritty.yml'
# print passwords
alias passwords='cat ~/Documents/passwords'

# tmux shortcut script
alias tm='sh ~/Documents/GitHub/my_collections/my_dotfiles/tmux/tmux_new_or_attach.sh'

# for making homebrew work, macOS only
eval "$(/opt/homebrew/bin/brew shellenv)"

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

source /Users/jogata/src/alacritty/extra/completions/alacritty.bash
