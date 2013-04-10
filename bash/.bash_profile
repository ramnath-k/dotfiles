if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

export PATH="/Applications//Postgres.app/Contents/MacOS/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#export DATABASE_URL=mysql://aarjav:taibu13instunt107@devtest.cl2zsx1gsfzj.us-east-1.rds.amazonaws.com/instuntdb
export DATABASE_URL=mysql://ramnath:9884328626@localhost/instuntdb
export DEBUG=True
export NOTIFICATIONS_EMAIL=testrequests@ridecell.com
export SERVER_URL=http://127.0.0.1:8080
export STRIPE_KEY=aI5apCL4PhZLRshs16GLPFLhtHazShim
export STRIPE_PUBLISHABLE_KEY=pk_CXC89Q4xxAzAHLlW8JFUxX57kglfD
export AMAZON_S3_USED=False
export AWS_STORAGE_BUCKET_NAME=istaging_or_instantcab
export URBANAIRSHIP_DRIVER_APP_KEY='DPS9fmCiQRKnAtVRpPwlRg'
export URBANAIRSHIP_DRIVER_APP_MASTER_SECRET='Lti-Y7SwQiOzvX4W8kj4bA'
export PUSH_NOTIFICATION_DISPATCH=False
export COMMUNITY_DRIVER_FARE_MULTIPLIER=1.20
export GOOGLE_API_KEY=AIzaSyCeEa9c9KOiR9K965IlnbUN1yIVsOdo7i8
export GOOGLE_ANALYTICS_ID=UA-37653074-1
export MIXPANEL_API_KEY=a739e16fd11e84809929d7667af99553
export BITLY_API_USERNAME=instantcab
export BITLY_API_KEY=R_ebe30c418d993e6ef59d3ecae2823f86
export BOUNTY_MESSAGE='Enter a cool bounty message here'
export BOUNTY_AMOUNT=0
export TAXI_MAX_DISPATCH_RADIUS=6400
export CANCELLATION_FEE=5.00
export TAXI_HEAD_START_SECONDS=0
export OUTGOING_SMS_NUMBER=4152555595
export HTTPS_SUPPORT=False
export INSTANTCAB_ENV=DEV

export DJANGO_SETTINGS_MODULE='instunt.settings'
