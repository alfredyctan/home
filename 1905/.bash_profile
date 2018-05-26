PS1="\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\] > "

export SCRIPT=/d/opt/script
export GROOVY_HOME=/d/opt/groovy/groovy-2.4.12
export GRADLE_HOME=/d/opt/gradle/gradle-4.0.2
export JAVA_HOME=/d/opt/java/jdk1.8.0_141
export MAVEN_HOME=/d/opt/maven/apache-maven-3.5.0
export NODE_JS_HOME=/d/opt/node.js/node-v6.11.4-win-x64

export PATH=$JAVA_HOME/bin:$GRADLE_HOME/bin:$MAVEN_HOME/bin:$NODE_JS_HOME:$SCRIPT:$PATH

WORKSPACE=/d/workspace/
alias ws='cd $WORKSPACE' 
alias hgc='history | grep "git commit"'

alias gaa='git add -A'
alias gcm='git commit -m'
alias grh='git reset --hard'
alias gss='git stash save'
alias gsp='git stash pop'

#docker related
alias dil='docker image ls -a'
alias dcl='docker container ls -a '
alias dsl='docker service ls -a '

function iid() {
	dil --format "{{.ID}} {{.Repository}} {{.Tag}}" | grep -e $1 | cut -d " " -f 1
}

function cid() {
	dcl --format "{{.ID}} {{.Image}} {{.Names}}" | grep -e $1 | cut -d " " -f 1
}

function sid() {
	dsl --format "{{.ID}} {{.Image}} {{.Names}}" | grep -e $1 | cut -d " " -f 1
}

function drmi() {
	docker image rm $(iid $1)
} 

function dcr() {
	docker container rm $(cid $1)
} 

function dsr() {
	docker service rm $(sid $1)
} 

function des() {
	docker exec -i -t $(cid $1) /bin/bash
} 

function de() {
	PATTERN=$1; shift 1;
	docker exec -i -t $(cid $PATTERN) $*
} 







