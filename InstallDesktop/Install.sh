function main
{
	echo " nessesario para leer archivos json"
	sudo pacman -Sy jshon --noconfirm
  rm ~/.dotfiles 
  ln -s $(pwd)/.dotfiles/  ~/
  sh ~/.dotfiles/make/make.sh   
}
main 
