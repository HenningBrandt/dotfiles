# Changes the current Profile of the iTerm2 Session
setItermProfile() {
    echo -e "\033]50;SetProfile=$1\a"
}
