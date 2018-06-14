PS1="\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\] > "

export HISTFILESIZE=9999
export HISTSIZE=999

export SCRIPT=/d/opt/script
export GROOVY_HOME=/d/opt/groovy/groovy-2.4.12
export GRADLE_HOME=/d/opt/gradle/gradle-4.0.2
export JAVA_HOME=/d/opt/java/jdk1.8.0_141
export MAVEN_HOME=/d/opt/maven/apache-maven-3.5.0
export NODE_JS_HOME=/d/opt/node.js/node-v6.11.4-win-x64
export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$GROOVY_HOME/bin:$GRADLE_HOME/bin:$NODE_JS_HOME/bin:$SCRIPT:$PATH

export WORKSPACE=/d/workspace/

. home/alias/alias.git
. home/alias/alias.sh
. home/1905/alias.ssh



