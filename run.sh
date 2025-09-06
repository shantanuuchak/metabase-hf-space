#!/bin/sh
# Let Metabase listen on 0.0.0.0 and use the $PORT Spaces gives it (fallback 3000)
export MB_JETTY_HOST=0.0.0.0
export MB_JETTY_PORT=${PORT:-3000}

# exec the original Metabase startup script from image
exec /app/run_metabase.sh
