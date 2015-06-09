# Git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Services
alias mongostart="sudo mongod --fork --logpath /var/log/mongo.log"
alias mysqlstart="mysql.server start"

# Git store everything in a temp commit
alias store='git add -A;git commit -m "WIP" --no-verify'

# Git interactive rebase with $1 commits
function gbase() {
  git rebase -i HEAD~$1
}

# Git reset to $1 commits ago
function greset(){
  git reset HEAD~$1
}

# See what is running on port $1
function portfind(){
  lsof -i tcp:$1
}

# Load git autocomplete script
if [ -f ~/.git-completion.sh ]; then
  . ~/.git-completion.sh
fi