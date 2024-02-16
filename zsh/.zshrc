# username and root access
alias currUsername="echo New Session Started, Current User is: abhijayrajvansh"
alias root="cd /Users/abhijayrajvansh/"

# reload: normal zshrc refresh reload
alias reload='clear && source ~/.zshrc'
alias rr='reload'

# hrr -> hot reload: refresh and goto root
alias hrr='reload; root;'

# navigation   
alias la='ls -l -G'
alias kk='clear' 
alias oo='open .'
alias zz='cd ..'
alias zzz='cd ../..'

# python specifc shortcuts config
alias python='python3'
alias app='python app.py'
alias py='python'
alias pip='pip3'

# homebrew aliases
alias bi='brew install'
alias bui='brew uninstall'

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

# Node package manager
alias ni='npm install'
alias ndev='npm run dev'

# Perfomant NPM
alias pp='pnpm'
alias pi='pnpm install'
alias ppdev='pi; pnpm run dev'

# Github Repository
alias readme-format='cd /Users/abhijayrajvansh/Github/documentation-format; cat README.md'

# github aliases
alias gs='git status'
alias ga='git add .'
alias gc='git clone'
gcm () {
    git commit -m "$1"
}
alias gp='git push'

defaultCommitMessage="${1:-update: audit push from local}"

gpush () {
    rm .DS_Store
    git add .
    git status
    git commit -m "$defaultCommitMessage"
    git push
}

# zsh configfunctions and Commandline
alias zshrc='code ~/.zshrc'

# updating .zshrc file and code snippets in git remote repo
alias cp-lzsh-rzsh='cp /Users/abhijayrajvansh/.zshrc /Users/abhijayrajvansh/Programming-Environment-2024/zsh'
alias cp-rzsh-lzsh='cp /Users/abhijayrajvansh/Programming-Environment-2024/zsh/.zshrc /Users/abhijayrajvansh/'
alias cp-lsnpt-rsnpt='cp -r /Users/abhijayrajvansh/Library/Application\ Support/Code/User/snippets /Users/abhijayrajvansh/Programming-Environment-2024'
alias cp-rsnpt-lsnpt='cp -r /Users/abhijayrajvansh/Programming-Environment-2024/snippets /Users/abhijayrajvansh/Library/Application\ Support/Code/User '

alias pz="cp-lzsh-rzsh; cp-lsnpt-rsnpt; my-env; gpush 'update: optimized env'"
alias updateenv='my-env; git pull; cp-rzsh-lzsh; cp-rsnpt-lsnpt;'

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
# {PROMPT='%n@%m %1~ %#}Default ZSH PROMPT

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f: %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# launching applications
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# default directories
alias desktop="cd /Users/abhijayrajvansh/Desktop"
alias documents="cd /Users/abhijayrajvansh/Documents"
alias downloads="cd /Users/abhijayrajvansh/Downloads"
alias movies="cd /Users/abhijayrajvansh/Movies"
alias pictures='cd /Users/abhijayrajvansh/Pictures'

# productivity
alias my-env="cd /Users/abhijayrajvansh/Programming-Environment-2024"
alias archives="cd /Users/abhijayrajvansh/Archives"
alias github='cd /Users/abhijayrajvansh/Github'
alias upwork="cd /Users/abhijayrajvansh/Upwork"
alias x='cd /Users/abhijayrajvansh/X'

# development related directories, aliases and functions
alias developer="cd /Users/abhijayrajvansh/Developer"
alias snippets='cd /Users/abhijayrajvansh/Library/Application\ Support/Code/User/snippets'
alias projects="cd /Users/abhijayrajvansh/Developer/projects"
alias concepts="cd /Users/abhijayrajvansh/Developer/software-engineering-concepts; code README.md"
alias dcp='cd /Users/abhijayrajvansh/Developer/daily-code-practice'

main () {
    desktop
    prg main.js
}

# linkedin stuff
alias linkedin="cd /Users/abhijayrajvansh/Linkedin"
alias certificates='cd /Users/abhijayrajvansh/Linkedin/certificates'

alias cohort="cd /Users/abhijayrajvansh/Developer/100xdev-cohort-2.0/"

# to hide and reveal desktop icons (mac machines)
alias showdesktop='defaults write com.apple.finder CreateDesktop true; killall Finder'
alias hidedesktop='defaults write com.apple.finder CreateDesktop false; killall Finder'   

clear; currUsername;

# more aliases:
alias bucketlist='cd /Users/abhijayrajvansh/Archives/bucketlist'
alias dev='developer'
alias desk='desktop'
alias docs='documents'
alias pics='pictures'