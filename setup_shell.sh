if ! command -v zsh > /dev/null; then
  if [[ $(uname) == "Darwin" ]]; then
    echo "installing zsh via brew"
    brew install zsh;
  elif [[ $(uname) == "Linux" ]]; then
    sudo apt install zsh;
  fi
fi

sudo chsh -s $(which zsh);

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# copy .zshrc file
curl -fsSL https://raw.githubusercontent.com/Paulchen5/shellSetup/main/.zshrc > ~/.zshrc
# copy .p10k.zsh file
curl -fsSL https://raw.githubusercontent.com/Paulchen5/shellSetup/main/.p10k.zsh > ~/.p10k.zsh
