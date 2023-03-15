#filtarr argumentos

function argumentos
{
    arg=($*)
    
    #dictionary =( [url] ,[path],[format] )
    declare -A dictionary
  

    for ((  i = 0 ; i < $# ; i++))
    do
        url=$( echo ${arg[$i]} | grep "http" )
        if [ $url ]
        then
            dictionary["url"]=${arg[$i]}
        fi


        case ${arg[$i]} in
        -p)
            dictionary[path]="."
          ;;
        -P)
            dictionary[path]=${arg[$i + 1]}
          ;;
        -s)
         dictionary[format]="sound"
         ;;
        -v)
         dictionary[format]="video"
         ;;
        esac
     
    done

    echo '('
    for key in  "${!dictionary[@]}" ; do
        echo "[$key]=${dictionary[$key]}"
    done
    echo ')'
}
argumentos $*
#declare -A The_Output_Dictionary="$(argumentos $* )"
#for key in  "${!The_Output_Dictionary[@]}" ; do
#    echo key: $key, value: ${The_Output_Dictionary[$key]}
#done

