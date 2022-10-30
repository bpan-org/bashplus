# Check the current Bash is a minimal version.
+sys:bash32+() ( shopt -s compat31 2>/dev/null )
+sys:bash40+() ( shopt -s compat32 2>/dev/null )
+sys:bash41+() ( shopt -s compat40 2>/dev/null )
+sys:bash42+() ( shopt -s compat41 2>/dev/null )
+sys:bash43+() ( shopt -s compat42 2>/dev/null )
+sys:bash44+() ( shopt -s compat43 2>/dev/null )
+sys:bash50+() ( shopt -s compat44 2>/dev/null )
+sys:bash51+() ( t() ( local x; local -p ); [[ $(t) ]] )

# Check if internet is reachable.
+sys:online() ( ping -q -c1 8.8.8.8 &>/dev/null )

# OS type checks:
+sys:linux() [[ $OSTYPE == linux* ]]
+sys:macos() [[ $OSTYPE == darwin* ]]
