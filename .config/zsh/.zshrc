alias ll='ls -la'
alias updatedb='sudo /usr/libexec/locate.updatedb'

randsecret() {
  local length="${1:-32}"
  local raw_bytes=$(( (length * 3 + 3) / 4 ))
  local secret=$(openssl rand -base64 "$raw_bytes" | tr -d '\n' | head -c "$length")

  echo "$secret"
}

decodebase64() {
  local input="$1"
  echo "$input" | base64 --decode
}

source  ~/.config/zsh/githelper

WELCOME_USER="%F{40}Login as %n@%M%f"
print -P $WELCOME_USER
