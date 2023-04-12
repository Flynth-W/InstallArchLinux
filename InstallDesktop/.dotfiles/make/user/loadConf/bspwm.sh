function main
{
	local theme=$1
	# crear enlace en .config
	rm -r $HOME/.config/bspwm 
	ln -s $HOME/.dotfiles/config/bspwm $HOME/.config/bspwm

	# crear enlace en startx
	rm  $HOME/.xinitrc
	ln -s $HOME/.dotfiles/config/xorg/xinitrc $HOME/.xinitrc
  # terminal colors	
	rm  $HOME/.dircolors
	ln -s $HOME/.dotfiles/config/xorg/dircolors $HOME/.dircolors
}
main $*
