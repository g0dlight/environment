alias ll='ls -la'
alias updatedb='sudo /usr/libexec/locate.updatedb'

source  ~/.config/zsh/githelper
source  ~/Code/dev-tools/awsv2helper/awsv2helper

WELCOME_USER="%F{40}Login as %n@%M%f"
print -P $WELCOME_USER

export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
export DOCKER_DEFAULT_PLATFORM=linux/arm64/v8

# export PATH="/opt/homebrew/opt/php@5.6/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@5.6/sbin:$PATH"
