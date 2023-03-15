function main
{
  rm ~/.dotfiles 
  ln -s $(pwd)/.dotfiles/  ~/
  sh ~/.dotfiles/make/make.sh   
}
main 
