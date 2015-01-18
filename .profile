export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### User specific bin
[[ -d "~/bin" ]] && export PATH="$PATH:~/bin"

### RVM
## Single User
[[ -f "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
## Multi User
[[ -f "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

### Custom bin?
[[ -d "$HOME/bin" ]] && export PATH="$PATH:$HOME/bin"

### Project Specific Binstubs
export PATH="./bin:$PATH"

### Homebrew
# Put homebrew things before system things
[[ -d "/usr/local/bin" ]] && export PATH=/usr/local/bin:$PATH

### Heroku
[[ -d "/usr/local/heroku/bin" ]] && export PATH=$PATH:/usr/local/heroku/bin

### SSL
#export SSL_CERT_FILE=/usr/local/etc/openssl/cert.pem

### RVM
## Single User
[[ -f "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
## Multi User
[[ -f "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"