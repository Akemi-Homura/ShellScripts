#!/bin/bash

# SERVER1 LOGINNAME1 PORT1 SSHPATH1 are personal environment variables
IP=$SERVER1
USER=$LOGINNAME1
PORT=$PORT1
SSHPATH=$SSHPATH1
EDITOR_WINDOW=remote-editor
HELP_WINDOW=remote-man

# wait for Password message for su command
function login(){
    tmux send-keys -t  ":$1" "clear" Enter "$SSHCOMMAND" Enter "su $SUSER" Enter 

    while true
    do
        if tmux capture-pane -t "$1" -p | grep Password
        then
            break
        fi
        sleep 1
    done

    tmux send-keys "clear"
    tmux send-keys -t "$1" "$PASS" Enter
}

function kill_window(){
    if tmux lsw | grep $1
    then
        tmux kill-window -t $1
    fi
}

printf "root name: "
read SUSER 
printf "Password "
read -s PASS

# kill the same-name window before create it
kill_window $EDITOR_WINDOW
kill_window $HELP_WINDOW

SSHCOMMAND="ssh $USER@$IP -p$PORT -i $SSHPATH"

tmux new-window -n $EDITOR_WINDOW
tmux set-window-option allow-rename off
tmux select-pane -t 0
tmux split-window -h 
tmux select-pane -t 1
tmux split-window -v
tmux set-window-option synchronize-panes
login $EDITOR_WINDOW

tmux new-window -n $HELP_WINDOW
tmux set-window-option allow-rename off
login $HELP_WINDOW

tmux select-window -t $EDITOR_WINDOW
