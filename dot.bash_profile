if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    export PS1="\[\e[31;3m\]–(\[\e[0m\]\u\[\e[31;3m\]@\[\e[0m\]\H\[\e[31;3m\])–(\[\e[0m\]\j\[\e[31;3m\]|\[\e[0m\]\l\[\e[31;3m\])–(\[\e[0m\]\d\[\e[31;3m\]|\[\e[0m\]\T\[\e[31;3m\])— — -\n\[\e[31;3m\]–(\[\e[0m\]\w\[\e[31;3m\])–(\[\e[0m\]$ "
fi

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby193/bin:$PATH
