function main
{
	local theme=$1
	# crear enlace en .config
	rm  $HOME/.Xresources
	ln -s $HOME/.dotfiles/config/xorg/Xresources $HOME/.Xresources
	
	rm -r $HOME/.urxvt 
	ln -s $HOME/.dotfiles/config/urxvt $HOME/.urxvt

}
main $*
