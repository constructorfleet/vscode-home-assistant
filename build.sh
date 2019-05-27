which nvm
if [ "$?" -eq "1" ]
then
  brew install nvm
  mkdir ~/.nvm
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
  echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.bash_profile
  echo '[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion' >> ~/.bash_profile
fi

nvm use 12.0
if [ "$?" -eq "3" ]
then
  nvm install 12.0
fi

npm install -g vsce

npm install
npm run compile
vsce package
