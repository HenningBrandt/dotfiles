# g as shorthand for git
# without arguments it behaves like git status
g() {
    if [[ $# > 0 ]]; then
        git $@
    else
        git status
    fi
}

# Complete g like git
compdef g=git
