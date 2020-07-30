# While working on a WSL terminal, I found that creating
# a ~/.vimrc led to vim ignoring some of the settings I
# liked from my default config. Instead of taking the time
# to manually apply all of the settings I actually want,
# I just used strace to find where the config was being
# loaded from and sourced it in my ~/.vimrc. This script
# automates the strace process.
tmpdir=$(pwd)/tmp
time_to_wait=1

if [ ! -d "$tmpdir" ] ; then
    mkdir $tmpdir ;
fi

if [ -f "~/.vimrc" ] ; then
    echo "Please close vim once it opens" ;
    sleep $time_to_wait ;
    strace -o ${tmpdir}/vimrc_strace vim ;

    mv ~/.vimrc ${tmpdir}/.vimrc ;

    echo "Please close vim once it opens" ;
    sleep $time_to_wait ;
    strace -o ${tmpdir}/defaultrc_strace vim ;

    mv ${tmpdir}/.vimrc ~/.vimrc ;
else
    echo "Please close vim once it opens" ;
    sleep $time_to_wait ;
    strace -o ${tmpdir}/defaultrc_strace vim ;

    touch ~/.vimrc

    echo "Please close vim once it opens" ;
    sleep $time_to_wait ;
    strace -o ${tmpdir}/vimrc_strace vim ;

    rm ~/.vimrc ;
fi

diff ${tmpdir}/vimrc_strace ${tmpdir}/defaultrc_strace > ${tmpdir}/vimrc_diffs
rm ${tmpdir}/vimrc_strace ${tmpdir}/defaultrc_strace 

echo ""
echo "Please inspect ${tmpdir}/vimrc_diffs to find when the default config is loaded."
echo "I recommend searching for instances of ${HOME}/.vimrc with vim or cat | less (remember to escape /)."
echo "ex. /usr/share/vim/vim81/defaults.vim"

