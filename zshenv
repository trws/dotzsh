source $ZDOTDIR/sysmagic

setopt nonomatch

for task in environment pathsetup; do
	for file in $ZDOTDIR/{,mine/}$task $ZDOTDIR/{,mine/}$task.${^zshuse}
		[[ -f $file ]] && source $file
	[[ -f $ZDOTDIR/mine/$i.override ]] && source $ZDOTDIR/$i.override
done

#export SSH_AUTH_SOCK=/tmp/502/SSHKeychain.socket

umask 022
[[ -f $ZDOTDIR/mine/umask ]] && umask $(<$ZDOTDIR/mine/umask);

typeset -U path cdpath fpath manpath