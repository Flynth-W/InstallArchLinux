function main
{
  echo -e "escoja un thema \n Orange \n CyanDark"
  read theme
  rm ~/.dotfiles 
  ln -s $(pwd)/.dotfiles/  ~/
  sh ~/.dotfiles/make/make.sh   $theme 
}
main 
