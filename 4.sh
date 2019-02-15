#!/bin/bash

launchtmux () {
    tmux new-session \; \
        split-window -v \; \
        select-pane -t 0 \; \
        send-key 'htop' C-m \; \
        split-window -h \; \
        send-keys 'watch -n 1 date' C-m \; \
        select-pane -t 2 \; \
        send-keys 'sudo tcpdump -n "tcp port 80 and (dst port 443)"' C-m \;
}
