if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LANG="en_US.UTF-8" # used to prevent createsuperuser from erroring out
export NLTK_DATA="/Users/ramnathkrishnamurthy/nltk_data"

# for reco sys course
export JAVA_HOME=`/usr/libexec/java_home -v 1.7` 
export JRE_HOME=`/usr/libexec/java_home -v 1.7`'/jre'
export PATH=$PATH:/usr/local/lib/node_modules/:/Users/ramnathkrishnamurthy/jung2-2_0_1
PATH=$PATH:$JAVA_HOME/bin
PATH=$PATH:$JRE_HOME/bin

export FOG_PROVIDER=AWS
export AWS_ACCESS_KEY_ID=AKIAJDEL6K4UWDAEBTAA
export AWS_SECRET_ACCESS_KEY=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
export ASSET_SYNC_GZIP_COMPRESSION=true
export ASSET_SYNC_EXISTING_REMOTE_FILES=keep
export FOG_DIRECTORY=frilpdev
export MEMCACHIER_SERVERS="localhost:11211"

export ROOT_PATH=/Users/ramnathkrishnamurthy/Work/autocomplete
export INSTALL_PATH=$ROOT_PATH/Installations
#CATALINA_HOME=$INSTALL_PATH/tomcat/apache-tomcat-7.0.42
CATALINA_HOME=/Users/ramnathkrishnamurthy/Work/leo_installations/tomcat/apache-tomcat-7.0.42
PATH=$PATH:$CATALINA_HOME/bin
ANT_HOME=$INSTALL_PATH/ant/apache-ant-1.9.3
PATH=$PATH:$ANT_HOME/bin
MONGO_HOME=$INSTALL_PATH/mongo/mongodb-osx-x86_64-2.4.10
PATH=$PATH:$HOME/bin:$MONGO_HOME/bin
SOLR_HOME=$INSTALL_PATH/solr/solr-4.4.0
export AUTOCOMPLETE_SOLR_HOME=$ROOT_PATH/data/solr
export JAVA_HOME
export JRE_HOME
export CATALINA_HOME
export ANT_HOME
export SOLR_HOME
export MONGO_HOME
export PATH
export JAVA_OPTS="-Dsolr.solr.home=$SOLR_HOME"

export ENABLE_ACTIVITY_PUSH=false
export ACTIVITY_PUSH_URL="http://localhost:3001/feed"
export TEAPOT_URL="http://teapot.stanford.edu/"

export EINSTEIN_DEBUG=true
export EINSTEIN_ALLOWED_HOSTS="localhost"

# to fix ValueError: unknown locale: UTF-8 in python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# einstein
export EINSTEIN_DB_HOSTNAME=localhost
export EINSTEIN_DB_PORT=5432
export EINSTEIN_DB_NAME=einsteinDev
export EINSTEIN_DB_USERNAME=postgres
export EINSTEIN_DB_PASSWORD=root

#frilp
export FRILP_DB_HOSTNAME=localhost
export FRILP_DB_PORT=5432
export FRILP_DB_NAME=frilp_beta_db_dev_beta_v2
export FRILP_DB_USERNAME=postgres
export FRILP_DB_PASSWORD=root

#leo
export LEO_DB_HOSTNAME=localhost
export LEO_DB_PORT=5432
export LEO_DB_NAME=leo
export LEO_DB_USERNAME=postgres
export LEO_DB_PASSWORD=root

#einstein nosql
export EINSTEIN_NOSQL_DB_NAME='frilp_dev'
export EINSTEIN_NOSQL_DB_HOST='localhost'
export EINSTEIN_NOSQL_DB_PORT=27018
export EINSTEIN_LEO_FETCH_DISABLED=true

# frilp autocomplete
export FRILP_AUTOCOMPLETE_READ_ONLY_TOKEN="testtest"
export FRILP_AUTOCOMPLETE_ADMIN_TOKEN="testtest"
export FRILP_AUTOCOMPLETE_SERVICE_URL="http://localhost:3001/autocomplete/"
export FRILP_AUTOCOMPLETE_SERVICE_ADMIN_URL="http://localhost:3001/autocomplete/"
export FRILP_AUTOCOMPLETE_WEB_CONCURRENCY=4

export MOBILE_ANDROID_PUSH_URL="https://android.googleapis.com/gcm/send"
export MOBILE_ANDROID_PUSH_API_KEY="testtest"

export PYTHONPATH=$PYTHONPATH:/Users/ramnathkrishnamurthy/Work/einstein

export EINSTEIN_ACCESS_TOKEN="testtest"

