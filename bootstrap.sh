#!/bin/sh

## Setup git

setup_gitconfig () {
    if
    git config --global user.name
    git config --global user.email
}

Check_OS () {
    OS_VER={awk 'NR==4 {print $2}' FS== /etc/os-release | tr -d '"'}
}

# setup_gitconfig () {
#   if ! [ -f git/gitconfig.local.symlink ]
#   then
    # info 'setup gitconfig'
# 
    # git_credential='cache'
    # if [ "$(uname -s)" == "Darwin" ]
    # then
    #   git_credential='osxkeychain'
    # fi
# 
    # user ' - What is your github author name?'
    # read -e git_authorname
    # user ' - What is your github author email?'
    # read -e git_authoremail
# 
    # sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" git/gitconfig.local.symlink.example > git/gitconfig.local.symlink
# 
    # success 'gitconfig'
#   fi
# }