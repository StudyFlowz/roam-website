# roam-website

Landing page for Roam. One static `index.html` plus `assets/`, no build step.

## Run it

```sh
python3 -m http.server 8080          # quick look
docker build -t roam-website .       # or the production image
docker run -p 8080:8080 roam-website
```

The image is nginx serving the files as-is. It listens on `$PORT` (default 8080), so it runs on
Cloud Run unchanged.

Before launch: replace the two `href="#"` Google Play links (search `TODO` in `index.html`).
