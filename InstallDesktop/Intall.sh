function main
{
  echo "escoja un thema :\n Orange CyanDark"
  read theme
  ln -s $(pwd)/.dotfiles/  ~/
  sh ~./.dotfiles/ $thema 
}
main 
