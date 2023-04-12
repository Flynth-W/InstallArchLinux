function main 
{
  local nameDirectory="$HOME/.config"

  if [[ !( -e  $nameDirectory ) ]]
  then
      echo "create"
      mkdir $nameDirectory
  fi

  echo "Instalando Paquetes"
  
  local messageOption="1)System\n2)User\n3)All\n"
  echo -e $messageOption 
  read -p ':: ' option 
  case $option in
    1 | System)
      sh $HOME/.dotfiles/make/system/main.sh
    ;;
    2 |User)
      sh $HOME/.dotfiles/make/user/main.sh
    ;;
    3 |All)
      sh $HOME/.dotfiles/make/system/main.sh  Install
      sh $HOME/.dotfiles/make/user/main.sh    Install
    ;;
    *)
        echo "undefine return"
    ;;
  esac

}
main 
