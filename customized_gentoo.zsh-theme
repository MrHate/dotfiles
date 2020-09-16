function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%}%n%{$reset_color%}@)%{$fg[green]%}%m:%{$fg[yellow]%}%(!.%1~.%~)%{$fg[red]%}$(git_prompt_info)%{$reset_color%}$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"

