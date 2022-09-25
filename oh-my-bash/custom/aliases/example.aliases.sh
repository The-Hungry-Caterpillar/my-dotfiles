# Add your own custom alias in the custom/aliases directory. Aliases placed
# here will override ones with the same name in the main alias directory.

# merlot "HPC"
alias merlot="ssh -X ogataj@merlot.bis.vcu.edu"

# Huff "HPC", this one sucks. SLURM.
alias huff="ssh ogataj@huff.hprc.vcu.edu"

# Fenn HPC, this is the best. Sun Grid Engine.
alias fenn="ssh ogataj@fenn.vcu.edu"

# for cleaning bed files
function makeBed() {
	cut -f1,2,3 -d $'\t' "$1" > temp && mv temp "$1";
}


# makes a bash script with options
# $1 should be desired file name
# $2 should can "sge" or "slurm"
# $3 should can be "options" if options template desired
function mkbash() {
   sh /Users/jogata/Documents/GitHub/stuff_that_might_be_useful_later/bash/mkbash.sh $1 $2 $3;
}

# open declude ranges notebook
alias notebook="pushd /Users/jogata/Documents/GitHub/my_collections/notebooks/declude_ranges && vim declude_ranges.md"

# e.g. "hg conda" looks through history of commands with word "conda"
function hg() {
    history | grep "$1";
}

# goodbye
alias yeet="rm -rf $1"

# Press c to clear the terminal screen.
alias c='clear'

# Press h to view the bash history.
alias h='history'

