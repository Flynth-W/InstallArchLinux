function main
{
	# crear enlace en .config
	rm -r $HOME/.moc 
	ln -s $HOME/.dotfiles/config/moc $HOME/.moc

}
main $*
