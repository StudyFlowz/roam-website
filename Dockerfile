# Static site, no build step: nginx serves the files as they are in the repo.
# Same base as roam-frontend, so both deploy to Cloud Run the same way.
FROM nginxinc/nginx-unprivileged:1.27-alpine

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html delete-account.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
# assetlinks.json: lets the Android app open ticket links (roam-index.cloud.run/route/…)
COPY .well-known /usr/share/nginx/html/.well-known

# Cloud Run injects PORT; 8080 keeps local runs working.
ENV PORT=8080
EXPOSE 8080

HEALTHCHECK --interval=15s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1:${PORT}/ >/dev/null 2>&1 || exit 1
