#/bin/sh
# descripcion
# input: un archivo con todas las funciones
#				commets xxx cterm=234
# onput: un archivo con la siguiente estructura
#				hi commets		guibg=#000000 guifg=#ffffff gui=bold
#					* la varicaion del color son 
#					* el guibg cambia cuando pase por todos lo fg
#					* el guifg se repite si el tamano del archivo supera las 100 lineas
#					* si son 101 lineas el fg se repite 2 veses
function main
{	
  declare -A bgcolors
  bgcolors[0]="#aa0000"
  bgcolors[1]="#aaaa00"
  bgcolors[2]="#00aa00"
  bgcolors[3]="#0000aa"
  bgcolors[4]="#4400aa"
  bgcolors[5]="#aaaaaa"
  bgcolors[6]="#330000"
  bgcolors[7]="#333300"
  bgcolors[8]="#003300"
  bgcolors[9]="#000033"
  declare -A fgcolors
  fgcolors[0]="#ff0000"
  fgcolors[1]="#ffff00"
  fgcolors[2]="#00ff00"
  fgcolors[3]="#00ff44"
  fgcolors[4]="#00ffff"
  fgcolors[5]="#ffffff"
  fgcolors[6]="#ff8800"
  fgcolors[7]="#55ff55"
  fgcolors[8]="#5555ff"
  fgcolors[9]="#ff5555"
	# sacr solo propiedades
	local file=$1
  local data=($(sort $file |cut -d " " -f1  ))
	data=data
	$(rm $file)
	# numero de lineas
  local long=${#data[*]}
	long=$(( $long - 1 ))
	# cuantas veses se repite un guifg
  local fgn=$(( $long / 100 + 1 ))
	# cada cuanto se cambia un guibg
  local bgn=$(( $fgn * 10 ))
  # contadores
  local ibg=0
  local ifg=0

  for (( i=0  ; i <= $long ; i=i+1 ))
  do
		# bg da una vuelta
    if [ "$(( $i % $bgn ))" == "0" ]
    then
      bgc=${bgcolors[$ibg]}
      ibg=$(( $ibg + 1  ))
      ibg=$(( $ibg  % $bgn ))
    fi
		# fg da una vuelta
    if [ "$(( $i % $fgn ))" == "0" ]
    then
      fgc=${fgcolors[$ifg]}
      ifg=$(( $ifg + 1 ))
      ifg=$(( $ifg % 10 ))
    fi
    # tamano de espacion para que quede uniforme
    local sp="${data[$i]}"
    sp=$( echo $sp |wc -c  )
    sp=$(( 35 - $sp))
    if [ "$(( $sp < 0 ))" == "1" ]
    then
      sp=0
    fi

    local space=""

    for (( j=1  ; j <= $sp ; j=j+1 ))
    do
      space="$space "
    done
    echo "hi  ${data[$i]}$space guibg=$bgc  guifg=$fgc  gui=bold" >> $file
  done  

}

main $1
