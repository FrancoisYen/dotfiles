MANPATH=/usr/local/texlive/2025/texmf-dist/doc/man:$MANPATH
INFOPATH=/usr/local/texlive/2025/texmf-dist/doc/info:$INFOPATH
PATH=/usr/local/texlive/2025/bin/x86_64-linux:$PATH

alias gs='git status'
alias gi='git init'
alias ga='git add -A'
alias gc='git commit -m'

alias ~='cd ~'
alias ..='cd ..'

alias rm='rm -i'

alias up='sudo apt update && sudo apt upgrade -y'

mc() {
	mkdir "$1"
	cd "$1"
}

mktex() {
	cp -r ~/dotfiles/latex-template ~/Desktop/"$1"
	cd ~/Desktop/"$1"
	mv .latex_preamble.tex main.tex
	code .
}
