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
  read -p ' ' option 
  case $option in
    System)
      sh $HOME/.dotfiles/make/packages/system/main.sh
    ;;
    User)
      sh $HOME/.dotfiles/make/packages/user/main.sh
    ;;
    All)
      sh $HOME/.dotfiles/make/packages/system/main.sh  Install
      sh $HOME/.dotfiles/make/packages/user/main.sh    Install
    ;;
    *)
        echo "undefine return"
    ;;
  esac

}
main 
