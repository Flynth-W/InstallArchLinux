function main 
{ 
  local pathBin=~/.tmp/
  if [ "$1" == "delete"  ]
  then
    rm -rf $pathBin
    mkdir $pathBin
  else
    ls -a $pathBin
    read -p 'eliminar todo [y/n]: ' option 
    if  [ "$option" == "y" ]
    then
      rm -rf $pathBin 
      mkdir $pathBin
      echo "los datos se an eliminado"
    fi
  fi
}

main $1
