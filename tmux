# https://github.com/seebi/tmux-colors-solarized/blob/master/tmuxcolors-256.conf
set-option -g status-bg colour235 #base02
set-option -g status-fg colour136 #yellow
set-option -g status-attr default

# set window split
bind-key v split-window -h
bind-key b split-window

# default window title colors
set-window-option -g window-status-fg colour244 #base0
set-window-option -g window-status-bg default
#set-window-option -g window-status-attr dim

# active window title colors
set-window-option -g window-status-current-fg colour166 #orange
set-window-option -g window-status-current-bg default
#set-window-option -g window-status-current-attr bright

# pane border
set-option -g pane-border-fg colour235 #base02
set-option -g pane-active-border-fg colour240 #base01

# message text
set-option -g message-bg colour235 #base02
set-option -g message-fg colour166 #orange

# pane number display
set-option -g display-panes-active-colour colour33 #blue
set-option -g display-panes-colour colour166 #orange
# clock
set-window-option -g clock-mode-colour green #green


set -g status-interval 1
set -g status-justify centre # center align window list
set -g status-left-length 20
set -g status-right-length 140
set -g status-left '#[fg=green]#H #[fg=black]• #[fg=green,bright]#(uname -r | cut -c 1-6)#[default]'
set -g status-right '#[fg=green,bg=default,bright]#(tmux-mem-cpu-load 1) #[fg=red,dim,bg=default]#(uptime | cut -f 4-5 -d " " | cut -f 1 -d ",") #[fg=white,bg=default]%a%l:%M:%S %p#[default] #[fg=blue]%Y-%m-%d'

# C-b is not acceptable -- Vim uses it
set-option -g prefix C-a
bind-key C-a last-window

# Start numbering at 1
set -g base-index 1

# Allows for faster key repetition
set -s escape-time 0

# Rather than constraining window size to the maximum size of any client 
# connected to the *session*, constrain window size to the maximum size of any 
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on

# Allows us to use C-a a <command> to send commands to a TMUX session inside 
# another TMUX session
bind-key a send-prefix

# Activity monitoring
setw -g monitor-activity on
set -g visual-activity on

# Vi copypaste mode
set-window-option -g mode-keys vi
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection

# hjkl pane traversal
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind-key C command-prompt -p "Name of new window: " "new-window -n '%%'"

# reload config
bind r source-file ~/.tmux.conf \; display-message "Config reloaded..."

# auto window rename
set-window-option -g automatic-rename

# rm mouse mode fail
set -g mode-mouse off

# Toggle mouse on with ^A m
bind m \
  set -g mode-mouse on \;\
  set -g mouse-resize-pane on \;\
  set -g mouse-select-pane on \;\
  set -g mouse-select-window on \;\
  display 'Mouse: ON'

# Toggle mouse off with ^B M
bind M \
  set -g mode-mouse off \;\
  set -g mouse-resize-pane off \;\
  set -g mouse-select-pane off \;\
  set -g mouse-select-window off \;\
   display 'Mouse: OFF'

# color
set -g default-terminal "screen-256color"

# Sane scrolling
set -g terminal-overrides 'xterm*:smcup@:rmcup@'

# status bar
set-option -g status-utf8 on

# https://github.com/edkolev/dots/blob/master/tmux.conf
# Updates for tmux 1.9's current pane splitting paths.
if-shell "[[ `tmux -V` == *1.9* ]]" 'unbind c; bind c new-window -c "#{pane_current_path}"'
if-shell "[[ `tmux -V` == *1.9* ]]" 'unbind s; bind s split-window -v -c "#{pane_current_path}"'
if-shell "[[ `tmux -V` == *1.9* ]]" "unbind '\"'; bind '\"' split-window -v -c '#{pane_current_path}'"
if-shell "[[ `tmux -V` == *1.9* ]]" 'unbind v; bind v split-window -h -c "#{pane_current_path}"'
if-shell "[[ `tmux -V` == *1.9* ]]" 'unbind %; bind % split-window -h -c "#{pane_current_path}"'
