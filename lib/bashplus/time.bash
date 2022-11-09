# Get current time in epoch seconds
if [[ $EPOCHREALTIME != "$EPOCHREALTIME" ]]; then
  readonly EPOCHSECONDS
  +time:epoch() ( echo "$EPOCHSECONDS" )
else
  +time:epoch() ( date +%s )
fi

if ( shopt -s compat41 2>/dev/null ); then
  +time:ymd() ( printf '%(%Y-%m-%d)T\n' -1 )
else
  +time:ymd() ( date '+%Y-%m-%d' )
fi
