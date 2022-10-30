# Normal color vars:
D='\e[30m'      # black
R='\e[31m'      # red
G='\e[32m'      # green
Y='\e[33m'      # yellow
B='\e[34m'      # blue
M='\e[35m'      # magenta
C='\e[36m'      # cyan
W='\e[37m'      # white

# Bold color vars:
D1='\e[30;1m'   # black
R1='\e[31;1m'   # red
G1='\e[32;1m'   # green
Y1='\e[33;1m'   # yellow
B1='\e[34;1m'   # blue
M1='\e[35;1m'   # magenta
C1='\e[36;1m'   # cyan
W1='\e[37;1m'   # white

# Reset color var:
Z='\e[0m'       # reset

+say() (
  set +x
  ${option_quiet:-false} && return

  if [[ ${1-} == [-+]? ]]; then
    color=$1; shift
    "+say$color" "$@"
  else
    +say-color "" "$@"
  fi
)

+say-color() (
  set +x
  ${option_quiet:-false} && return

  color=$1; shift
  if [[ -t 1 ]]; then
    echo -e "$Z$color$*$Z"
  else
    echo -e "$*"
  fi
)

+say-d() ( +say-color "$D" "$@" )
+say-r() ( +say-color "$R" "$@" )
+say-g() ( +say-color "$G" "$@" )
+say-y() ( +say-color "$Y" "$@" )
+say-b() ( +say-color "$B" "$@" )
+say-m() ( +say-color "$M" "$@" )
+say-c() ( +say-color "$C" "$@" )
+say-w() ( +say-color "$W" "$@" )

+say+d() ( +say-color "$D1" "$@" )
+say+r() ( +say-color "$R1" "$@" )
+say+g() ( +say-color "$G1" "$@" )
+say+y() ( +say-color "$Y1" "$@" )
+say+b() ( +say-color "$B1" "$@" )
+say+m() ( +say-color "$M1" "$@" )
+say+c() ( +say-color "$C1" "$@" )
+say+w() ( +say-color "$W1" "$@" )
