#export PATH=usr/local/bin:$PATH:/usr/local/sbin:/usr/local/mongodb/bin:/usr/local/git/bin:/opt/local/lib/mysql5/bin:/opt/local/lib/postgresql83/bin:/opt/local/bin:/opt/local/sbin:~/Library/bin:/usr/local/lib/jruby-1.3.1/bin:~/Documents/todo.txt_cli-2.7
unsetopt auto_name_dirs
if [[ -s /Users/Timbo/.rvm/scripts/rvm ]] ; then source /Users/Timbo/.rvm/scripts/rvm ; fi

#RVM settings
rvm_custom_status() {
  local i=$(~/.rvm/bin/rvm-prompt i)
  if [ "$i" = "ruby" ]; then
    echo "%{$fg[red]%}$(~/.rvm/bin/rvm-prompt v g)"
  else
    echo "%{$fg[red]%}$(~/.rvm/bin/rvm-prompt u g)"
  fi
}

if [[ -s ~/.rvm/scripts/rvm ]] ; then 
  RPROMPT='$(rvm_custom_status)%{$reset_color%} $(battery_charge)'
fi

battery_charge(){
  echo $(~/.rvm/rubies/ruby-1.9.2-p180/bin/ruby ~/bin/battery.rb)
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%} ["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} %B⚡%b %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

PROMPT='%{$fg[blue]%}» %{$fg[cyan]%}%2c% %{$reset_color%}$(git_prompt_info)%{$reset_color%}: '
