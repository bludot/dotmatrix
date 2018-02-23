# . "$HOME/.bashrc"
export ANDROID_HOME=/Users/jamestrotter/Library/Android/sdk

source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:/Users/jamestrotter/Library/Android/sdk/platform-tools/
export PATH=$PATH:~/.nexustools
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:$PATH"
alias mongostag='mongo -u heroku_858bq5f1 -p 71m7tntimrp8krt7ld0miveim4 ds049496.mlab.com:49496/heroku_858bq5f1'
alias redisstag='redis-cli -a rrwGJB0NZJKDv5kd -h redis-19525.c10.us-east-1-3.ec2.cloud.redislabs.com -p 19525'
alias mongostag_st='mongo "mongodb://selfapy-api-staging-shard-00-00-kihrj.mongodb.net:27017,selfapy-api-staging-shard-00-01-kihrj.mongodb.net:27017,selfapy-api-staging-shard-00-02-kihrj.mongodb.net:27017/selfapy-api-staging?replicaSet=selfapy-api-staging-shard-0" --ssl --authenticationDatabase admin --username selfapy-api-staging --password P9gcpazLpSqZQj22'
source ~/.bashrc
