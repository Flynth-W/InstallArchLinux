function main
{
	local theme=$1
	# crear enlace en .config
	rm  $HOME/.xinitrc
	ln -s $HOME/.dotfiles/config/xorg/xinitrc $HOME/.xinitrc
	
	rm  $HOME/.dircolors
	ln -s $HOME/.dotfiles/config/xorg/dircolors $HOME/.dircolors
	# install fonts
	echo " intall fonts"
	#sudo pacman -S adobe-source-code-pro-fonts ttf-nerd-fonts-symbols --noconfirm
	# copi icons 
	echo " copi icons thmes"
	sudo cp -a	$HOME/.dotfiles/share/icons/* /usr/share/icons/ 
	sudo cp -a	$HOME/.dotfiles/share/fonts/* /usr/share/fonts/ 
	sudo cp -a	$HOME/.dotfiles/share/themes/* /usr/share/themes/
	# copi settings
	rm  $HOME/.config/gtk-3.0/settings.ini
	mkdir $HOME/.config/gtk-3.0
	cp 	$HOME/.dotfiles/share/settings.ini    $HOME/.config/gtk-3.0/settings.ini
}
main $*
