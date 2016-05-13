#!/bin/bash

username=$1 # the first argument is the username of the user to change the shell of
echo "Configuring Terminal" & \
echo "Make sure git is working. To test this, run git on the command line. You may be asked to install some software." & \
echo "installing brew..." & \

line=$(brew --version | tail -1 | grep "last commit")
if [ $? -eq 1 ]
    then
    echo "Brew not installed, installing"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Brew is installed. Continuing"
fi

#install Oh-My-Zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh & \

chsh -s /bin/zsh $username & \

sed -i '' 's/^ZSH_THEME.*/ZSH_THEME="agnoster"/' /Users/$username/.zshrc & \
#append the default user line to .zshrc
sed -i '' '/^ZSH_THEME.*/ a\ 
 DEFAULT_USER='"$username"' \
 ' /Users/$username/.zshrc & \
sed -i '' 's/^plugins.*/plugins=(git bower brew coffee colored-main colorize copydir copyfile dircycle extract fabric heroku node npm nvm osx pip sublime themes)/' /Users/$username/.zshrc & \

#install solarized dark theme
echo "cloning solarized. You need to import the theme into Iterm manually from the Profiles/Colors tab." & \
git clone git://github.com/altercation/solarized.git /tmp/solarized; open /tmp/solarized & \

echo "cloning terminal fonts. You need to double click and install all the *.otf files" & \
git clone https://github.com/powerline/fonts.git /tmp/powerline; open /tmp/powerline/Meslo;
