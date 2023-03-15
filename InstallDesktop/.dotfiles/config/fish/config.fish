#! /bin/sh 

#╔═══════════════════════════════════════════════╗
#║											FISH										 ║
#╚═══════════════════════════════════════════════╝
#┌───────────────────────────────────────────────┐
#│	fish es un shell de línea de comandos 			 │
#│	escrito principalmente con uso interactivo 	 │
#└───────────────────────────────────────────────┘
#		╔═══════════════════════════════════════════════╗
#		║									KEYBOARDS											║
#		╚═══════════════════════════════════════════════╝
#				[ new terminal urxvt ]
#					bind \ct 'urxvt &> /dev/null & ; commandline -f repaint'    
#		╔═══════════════════════════════════════════════╗
#		║										GENERAL  							  	  ║
#		╚═══════════════════════════════════════════════╝
#				[ mensaje de inicio ]
					set -U fish_greeting ""
#				[ carga colorews de los archivos y directorios ]
					eval (dircolors -c  $HOME/.dircolors  )  
#				[ colores para la terminal /ssh ]
					export TERM=xterm-256color 

#		╔═══════════════════════════════════════════════╗
#		║								Ruta de los Scripts  			  	  ║
#		╚═══════════════════════════════════════════════╝
# 			[ Scripts locaales ]
					fish_add_path ~/.local/bin/
					fish_add_path ~/.deno/bin/
# 			[ Scripts locaales ]
					fish_add_path ~/.dotfiles/utils/scripts/

#		╔═══════════════════════════════════════════════╗
#		║											ALIAS  							  	  ║
#		╚═══════════════════════════════════════════════╝
#				[ perzonalizado ( lsd ) ]
					alias lsd='lsd --config-file ~/.config/lsd/config.yalm '
#				[ perzonalizado ( neofetch ) ruta de imagen ,  tamano ]
					alias neofetch='neofetch --w3m $HOME/.config/neofetch/images/chaisanBlack-removebg-preview.png --image_size 260'
#				[ limpiar la consola ]
					alias c='clear -x'
#				[ editor de codigo  ]
					alias v='nvim'
#				[ papelera  ]
					alias rm='PaperBin.sh'
#				[ contenedores docker ]
					alias dk='docker'
#       [ git  ]
          alias gs='git status '
          alias ga='git add '
          alias gc='git commit '
          alias gp='git push origin '
          alias gd='git diff '
#				[ deno todos los permisos ]
					alias dea='deno run --allow-all'
#				[ deno todos los permisos y reicicia al detectar cambios ]
					alias deaw='deno run --allow-all --watch '
# clipboard
    alias _xclip='xclip -selection clipboard '
# traductor all to spanish
    alias _trES='trans -t  spanish -p  '
# traductor all to english
    alias _trEN='trans -b -p '

#		╔═══════════════════════════════════════════════╗
#		║											COLORES  							  	║
#		╚═══════════════════════════════════════════════╝
#   		[ line cmd ]
#					* primera parte
						set -U fish_color_command  "#00ccff"
#					* segunda parte
						set -U fish_color_param    "#30ffaa"
#				[  < , >  ]
					set -U fish_color_redirection   "#ffaa33"
#				[  autocompletato  ]
					set -U fish_color_autosuggestion    "#777777"
#				[  calcelar ( ^C )  ]
					set -U fish_color_cancel              "#ff0000"
#				[  comando mal escrito  ]
					set -U fish_color_error               "#ff0000"
#				[  lista de comandos  ]
					set -U fish_pager_color_completion    "#005566"
#				[  descripcion de comandos  ]
					set -U fish_pager_color_description   "#00aaff"
#				[  numero  de comandos  disponibles ]
					set -U fish_pager_color_progress      '#ffaa00'



#		╔═══════════════════════════════════════════════╗
#		║								MENSAJE DE INICIO						  	║
#		╚═══════════════════════════════════════════════╝
#				[ mensaje izquierdo ]	
					function fish_prompt
					  
					  echo -e (sh $HOME/.dotfiles/utils/prompt/left_prompt.sh)
					end
#				[ mensaje Derecho ]	
					function fish_right_prompt -d "Write out the right prompt"
					  echo -e (sh $HOME/.dotfiles/utils/prompt/right_prompt.sh)
					end
