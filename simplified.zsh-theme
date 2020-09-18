function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo "$"; fi
}

PROMPT='%{$fg[cyan]%}%n@%m:%{$fg[blue]%}%(!.%1~.%~)%{$fg[red]%}$(git_prompt_info)%{$reset_color%}$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="("

