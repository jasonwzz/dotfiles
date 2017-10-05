# bash shortcuts
# we should ssh and forward X11
alias xsh="ssh -X"
#alias tdb='xterm -j geometry 100x30 -font 10x20 -2 gdbtui --tty /dev/pts/230'
alias cd..='cd ..'
alias cls='clear'
alias lo='logout'
alias ls='ls --group-directories-first --color=auto --width=100 -x'
alias ll='ls -alht'
alias lr='ls -alhtr'
# attach to an existing screen session if one exists, else launch new one
alias viprof='vim ~/.profile-user'
alias rlprof='source ~/.profile-user'
# previous directory
alias pcd='cd -'
# cp a directory recursively
alias cpdir='cp -avr'
# show text in columns with tab being the delimiter
alias coltab="column -ts $'\t'"
# show running processes
alias whom='ps uxwf'
# directly pass it the command you want to kill. easier to use than kill
alias pkill='pkill -u zwang'
# grep the process info of a command
alias pgrep='pgrep -u zwang'
# toggle prompt on/off
alias pt='source /home/user/zwang/utils/toggle_prompt.sh'

# tmux stuff
alias tmux="TERM=screen-256color-bce tmux"
alias tma='tmux attach -d'
#alias trename='/home/user/zwang/utils/rename-pane.sh'

# python stuff
# activate local virtualenv
alias pylcl='source venv/bin/activate'
# deactive it...
alias deact='deactivate'

# vim
#alias vim="/home/user/zwang/utils/launch_vim.sh"
# vi to use old vim
alias vi="/usr/bin/vim"
alias vidf='vimdiff -R'

# screen 
alias scrrd='screen -dR'
