# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

#PS1="\e[1;32m[\u@\h \W]\$\e[m"
TN=""
PS1='\n\033[01;35m[\u@\h:\W]>\033[0m\n\033[01;32m$TN$\033[0m'
echo "Set variable TN to name terminal at command line"
alias ll="ls -la"

unset rc
