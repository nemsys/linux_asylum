#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
# All custom functions needed for bash configuration                 #
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
welcome() {
    which fortune > /dev/null
    fortune_check=$?
    case $- in
    *i*)    # interactive shell
	    echo -e "${WHITE}Welcome to ${LIGHTGREEN}$(hostname)${WHITE} at ${YELLOW}"$(date +"%A [%d.%m.%Y]"), ${YELLOW}"$(date +"%R")"${NC}
        echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        if [[ $fortune_check -eq 0 ]] ; then
            echo -e ${LIGHTBLUE}$(fortune -s)${NC}
            echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        fi
    ;;
    *)      # non-interactive shell
    ;;
    esac
}

# Some functions to display available colors:
colors_hash(){
  declare -A colors
  colors=(
    ['BLACK']='\033[0;30m'
    ['DARKGRAY']='\033[1;30m'
    ['RED']='\033[0;31m'
    ['LIGHTRED']='\033[1;31m'
    ['GREEN']='\033[0;32m'
    ['LIGHTGREEN']='\033[1;32m'
    ['BROWN']='\033[0;33m'
    ['YELLOW']='\033[1;33m'
    ['BLUE']='\033[0;34m'
    ['LIGHTBLUE']='\033[1;34m'
    ['PURPLE']='\033[0;35m'
    ['LIGHTPURPLE']='\033[1;35m'
    ['CYAN']='\033[0;36m'
    ['LIGHTCYAN']='\033[1;36m'
    ['LIGHTGRAY']='\033[0;37m'
    ['WHITE']="\033[1;37m"
    ['NC']="\033[0m"
  )
  # usage:

  echo "Colors available for you:"
  for color in "${!colors[@]}"; do echo -e "${colors["$color"]}$color"; done
  echo
}

full_colors(){
    ###################################################
    #
    #   This function echoes a bunch of color codes to the
    #   terminal to demonstrate what's available.  Each
    #   line is the color code of one forground color,
    #   out of 17 (default + 16 escapes), followed by a
    #   test use of that color on all nine background
    #   colors (default + 8 escapes).
    #

    T='test '   # The test text

    echo -e "\n                 40m     41m     42m     43m\
         44m     45m     46m     47m";

    for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
               '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
               '  36m' '1;36m' '  37m' '1;37m';
      do FG=${FGs// /}
      echo -en " $FGs \033[$FG  $T  "
      for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
        # do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
        do echo -en "\033[$FG\033[$BG  $T  \033[0m";
      done
      echo;
    done
    echo
}
