defaultvimrc="unset"
defaultvimrc="/usr/share/vim/vim80/defaults.vim"

cp vi-config ${HOME}/.vimrc
vimarg="-e -c \":1,8d\" -c \":wq\""
read -p "Source a default vim config in ./vimrc?[y/n] " srcvimrc
if [ "$srcvimrc" == "y" ] ; then
	if [ "$defaultvimrc" == "unset" ] ; then
		read -p "Enter the path to your default vimrc: " defaultvimrc
		if [ ! -f "$defaultvimrc" ] ; then
			echo "File not found. Please try again or set the defaultvimrc variable to the path to your default vimrc." ;
			exit 0 ;
		fi
	fi
	vimarg="-e -c \":2\" -c \"x\" -c \":%s/<default_vim_config_path>/${defaultvimrc//\//\\\/}/g\" -c \":3,8d\" -c \":wq\"" ;
fi
echo "$vimarg"

vim $vimarg ${HOME}/.vimrc
