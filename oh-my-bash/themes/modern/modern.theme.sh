#! bash oh-my-bash.module
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

SCM_THEME_PROMPT_DIRTY=" ${_omb_prompt_bold_brown}✗${_omb_prompt_normal}"
SCM_THEME_PROMPT_CLEAN=" ${_omb_prompt_bold_green}✓${_omb_prompt_normal}"
SCM_GIT_CHAR="${_omb_prompt_bold_green}±${_omb_prompt_normal}"
SCM_SVN_CHAR="${_omb_prompt_bold_teal}⑆${_omb_prompt_normal}"
SCM_HG_CHAR="${_omb_prompt_bold_brown}☿${_omb_prompt_normal}"

case $TERM in
	xterm*)
	TITLEBAR="\[\033]0;\w\007\]"
	;;
	*)
	TITLEBAR=""
	;;
esac

PS3=">> "

is_vim_shell() {
	if [ ! -z "$VIMRUNTIME" ]
	then
		echo "[${_omb_prompt_teal}vim shell${_omb_prompt_normal}]"
	fi
}

modern_scm_prompt() {
	CHAR=$(scm_char)
	if [ $CHAR = $SCM_NONE_CHAR ]
	then
		return
	else
		echo "[$(scm_char)][$(scm_prompt_info)]"
	fi
}

_omb_theme_PROMPT_COMMAND() {
	if [ $? -ne 0 ]
	then
		# Yes, the indenting on these is weird, but it has to be like
		# this otherwise it won't display properly.

    PS1="${TITLEBAR}${_omb_prompt_bold_brown}┌─${_omb_prompt_reset_color}$(modern_scm_prompt)[${_omb_prompt_teal}\W${_omb_prompt_normal}][$(battery_charge)]$(is_vim_shell)
${_omb_prompt_bold_brown}└─▪${_omb_prompt_normal} "
	else
		PS1="${TITLEBAR}┌─$(modern_scm_prompt)[${_omb_prompt_teal}\W${_omb_prompt_normal}][$(battery_charge)]$(is_vim_shell)
└─▪ "
	fi
}

PS2="└─▪ "



_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
