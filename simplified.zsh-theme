function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo "$"; fi
}

PROMPT='%{$fg[cyan]%}%n@%m:%{$fg[blue]%}%(!.%1~.%~)%{$reset_color%}$(prompt_char) '
