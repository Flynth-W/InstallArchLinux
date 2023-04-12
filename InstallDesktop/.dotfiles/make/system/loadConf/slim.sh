function main
{
	# system config
	
	sudo rm /etc/slim.conf
	
	sudo cp 	$HOME/.dotfiles/config/slim/slim.conf   /etc/slim.conf
	
	sudo rm -r /usr/share/slim/themes/Menta/
	sudo cp -a	$HOME/.dotfiles/config/slim/Menta/   /usr/share/slim/themes/	
	
	sudo systemctl  enable slim.service

}
main $*
