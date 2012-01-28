# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
# alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias sl=ls # often screw this up

alias afind='ack-grep -il'

# Tim's Git aliases and other fun
alias gitrm='git ls-files --deleted | xargs git rm'
alias gitx='gitx --all'
alias push='git push'
alias rebase='git fetch; git rebase origin/master'
alias st='git status'
alias gs='git status'
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias go='git co'
alias t='todo.sh -d ~/todo.cfg'

alias be='bundle exec'
