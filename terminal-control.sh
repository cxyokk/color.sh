# Terminal output control (http://www.termsys.demon.co.uk/vtansi.htm)

TC='\e['

CLR_LINE_START="${TC}1K"
CLR_LINE_END="${TC}K"
CLR_LINE="${TC}2K"

# Hope no terminal is greater than 1k columns
RESET_LINE="${CLR_LINE}${TC}1000D"

# Colors and styles (based on https://github.com/demure/dotfiles/blob/master/subbash/prompt)

BOLD="${TC}1m"    # Bold text only, keep colors
UNDR="${TC}4m"    # Underline text only, keep colors
INV="${TC}7m"     # Inverse: swap background and foreground colors
REG="${TC}22;24m" # Regular text only, keep colors
REGF="${TC}39m"   # Regular foreground coloring
REGB="${TC}49m"   # Regular background coloring
RST="${TC}0m"     # Reset all coloring and style

# Basic            High Intensity      Background           High Intensity Background
BLACK="${TC}30m";  IBLACK="${TC}90m";  ONBLACK="${TC}40m";  ONIBLACK="${TC}100m";
RED="${TC}31m";    IRED="${TC}91m";    ONRED="${TC}41m";    ONIRED="${TC}101m";
GREEN="${TC}32m";  IGREEN="${TC}92m";  ONGREEN="${TC}42m";  ONIGREEN="${TC}102m";
YELLOW="${TC}33m"; IYELLOW="${TC}93m"; ONYELLOW="${TC}43m"; ONIYELLOW="${TC}103m";
BLUE="${TC}34m";   IBLUE="${TC}94m";   ONBLUE="${TC}44m";   ONIBLUE="${TC}104m";
PURPLE="${TC}35m"; IPURPLE="${TC}95m"; ONPURPLE="${TC}45m"; ONIPURPLE="${TC}105m";
CYAN="${TC}36m";   ICYAN="${TC}96m";   ONCYAN="${TC}46m";   ONICYAN="${TC}106m";
WHITE="${TC}37m";  IWHITE="${TC}97m";  ONWHITE="${TC}47m";  ONIWHITE="${TC}107m";

# examples
# echo -e "${BOLD}${RED}bold red on ${ONBLUE}blue background,${REGB} now back to regular background, ${REGF}regular foreground and ${REG}regular text"
# echo -e "${BOLD}${UNDR}${GREEN}You can reset this whole style in one${RST} command"
# echo -n "${BOLD}${BLUE}${ONWHITE}bold blue text on white background${RST}"; sleep 3; echo "${RESET_LINE}${RED}${ONYELLOW}becomes red text on yellow background${RST}"
