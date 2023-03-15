function main
{
  # alias paplelera
  mkdir $HOME/.tmp
  # combiar fish como interprete shell 
	local user="$(whoami)"
	sudo usermod  --shell /bin/fish $user

	# crear enlace en .config
	rm -r $HOME/.config/fish 
	ln -s $HOME/.dotfiles/config/fish $HOME/.config/fish

}
main 
