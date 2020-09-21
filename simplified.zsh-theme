function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo "$"; fi
}

PROMPT='%{$fg[green]%}%n%{$reset_color%}:%{$fg[cyan]%}%(!.%1~.%~)%{$fg[red]%}$(git_prompt_info)%{$reset_color%}$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="("

