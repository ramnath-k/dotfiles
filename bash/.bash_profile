if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export PATH="/Applications//Postgres.app/Contents/MacOS/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LANG="en_US.UTF-8" # used to prevent createsuperuser from erroring out
export NLTK_DATA="/Users/ramnathkrishnamurthy/nltk_data"

# for reco sys course
export JAVA_HOME=`/usr/libexec/java_home -v 1.7` 
export M2_HOME=/Users/ramnathkrishnamurthy/apache-maven-3.1.0
export PATH=/Users/ramnathkrishnamurthy/jung2-2_0_1:/Users/ramnathkrishnamurthy/lenskit-2.0/bin:$M2_HOME/bin:$PATH

