#
# Shonzilla bash configuration
#
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxcgcdabagacad

# misc: basics
alias l='less'
alias ll='ls -l'
alias la='ls -la'
alias lt='ls -lt'
alias ltr='ls -ltr'
alias ltr='newest_n_files .'
alias ldl='newest_n_files ~/Downloads/'
alias ..='cd ..'
alias ...='cd ../..'

# misc: utility
alias tar='COPYFILE_DISABLE=1 gnutar' # effing Mac tar
alias scp2='rsync -vrPtz -e ssh'
alias nogrep='grep -v grep'
alias hideprev='history -d $((HISTCMD-2)) && history -d $((HISTCMD-1))' # Hide the previous command
source .bash_github

# misc: real-world
alias weather.all='weather "Hamburg,DE" && weather "Belgrade,RS" && weather "Berlin,DE" && weather "Toronto,CA"'
alias wetter='weather "Hamburg,DE" && weather "Berlin,DE" && weather "Frankfurt,DE" && weather "Munich,DE"'
alias wetter.hh='weather "Hamburg,DE"'
alias weather.to='weather "Toronto,CA"'
alias vreme='weather "Belgrade,RS"'

# misc: productivity
alias todoed='subl ~/Dropbox/work/todo/todo.txt'
alias todo.sh='~/dev/tools/todo.txt_cli/todo.sh'
alias todo=todo.sh
source ~/dev/tools/todo.txt_cli/todo_completion


## dev: tools
alias mate="/Applications/TextMate.app/Contents/MacOS/TextMate $* & > /dev/null 2>&1"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
export LESSEDIT='mate -l %lm %f'
export PATH=$PATH:/opt/local/bin
alias jsbeatufier=~/dev/web/javascript/bin/jsbeautifier.sh
alias play=~/dev/web/play20/play-2.1.3/play

## dev: edu
alias lenskit=/Users/nenad.nikolic/dev/tools/lenskit/bin/lenskit-eval

# dev: Ruby
[[ -s "/Users/nenad.nikolic/.rvm/scripts/rvm" ]] && source "/Users/nenad.nikolic/.rvm/scripts/rvm"  # This loads RVM into a shell session.
# Ruby tools (rvm, irb, gem, bundle, etc.)
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# dev: Rails
# Snow Leopard: making sure mysql gem compiles in 64bit mode
export ARCHFLAGS="-arch x86_64"

# dev: Grails
# export GRAILS_HOME=~/dev/web/grails
# export PATH=$PATH:$GRAILS_HOME/bin

# dev: buzzwords
export PATH=$PATH:~/dev/bin
alias mongo=~/dev/tools/mongodb/bin/mongo
alias mongod=~/dev/tools/mongodb/bin/mongod

# dev: java
alias java8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8` && echo 'Switched to Java 8. Here what \"java -version\" says:' && java -version"
alias java7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7` && echo 'Switched to Java 7. Here what \"java -version\" says:' && java -version"
alias java6="export JAVA_HOME=`/usr/libexec/java_home -v 1.6` && echo 'Switched to Java 6. Here what \"java -version\" says:' && java -version"
alias visualvm=~/dev/tools/visualvm/bin/visualvm
alias _m_offline='mvn -o -Dmaven.test.skip=true'
alias m='echo "Running Maven WITHOUT tests and OFFLINE"; _m_offline'
alias md='echo "Clean. Build. Deploy. GO!"; m clean && m && ./copy.sh'
export MAVEN_OPTS_RUN=-Dmaven.test.skip=true
export MAVEN_OPTS_DBG="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8001"
alias _mt_offline='mvn -o -Dmaven.test.skip=false $*'
alias mt='echo "Running Maven WITH tests and OFFLINE" ; _mt_offline $*'
alias mtd='echo "Running Maven build in debug mode" ; MAVEN_OPTS=$MAVEN_OPTS_DBG ; _mt_offline $* ; MAVEN_OPTS=$MAVEN_OPTS_RUN'
alias mcob='echo "Running Maven build with tests and Cobertura report"; _mt_offline cobertura:cobertura'

# dev: Android
export ANDROID_HOME=/Users/nenad.nikolic/dev/android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/18.1.0
alias adb=~/dev/android/sdk/platform-tools/adb

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
