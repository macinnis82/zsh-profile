[[ -s ~/.zshrc ]] && source ~/.zshrc

# aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
else
  print "Aliases not loaded!"
fi

# maven config
if [ -f ~/.mavenConfig ]; then
  source ~/.mavenConfig
else
  print "Maven Config not loaded!"
fi

# proxy config
if [ -f ~/.proxyConfig ]; then
  source ~/.proxyConfig
else
  print "Proxy Config not loaded!"
fi

export SPRING_PROFILES_ACTIVE=local
export REQUESTS_CA_BUNDLE=/usr/local/etc/openssl/cert.pem
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
alias python='python3'

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use 16

# Fortify
export PATH="/Applications/Fortify/Fortify_SCA_and_Apps_21.1.3/bin:$PATH"