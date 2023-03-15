function main
{
  echo "escoja un thema :\n Orange CyanDark"
  read theme
  ln -s ./.dotfiles/  ~/
  sh ~./.dotfiles/ $thema 
}
main 
