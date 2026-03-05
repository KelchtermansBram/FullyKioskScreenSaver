#!/bin/sh
# Inject language env (APP_LANGUAGE or LANGUAGE) into config.js so the app can read it in the browser
LANG="${APP_LANGUAGE:-${LANGUAGE:-en}}"
cat > /usr/share/nginx/html/config.js << EOF
window.APP_LANGUAGE = "${LANG}";
EOF

exec "$@"
