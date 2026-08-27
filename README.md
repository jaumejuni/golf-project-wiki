# Golf MK3 TFSI Swap Wiki (Hugo)

This site is built with [Hugo](https://gohugo.io/) using the `hugo-book` theme.

## Requirements

- Hugo Extended (developed against v0.165.0)

Check installation:

```bash
hugo version
```

Install on macOS with Homebrew (if needed):

```bash
brew install hugo
```

## Clone

The theme is a git submodule, so clone with submodules included:

```bash
git clone --recurse-submodules <repo-url>
```

If you already cloned without that flag, fetch the submodule with:

```bash
git submodule update --init --recursive
```

## Run Locally

From the project root:

```bash
hugo server -D
```

Open:

- http://localhost:1313/ (English)
- http://localhost:1313/es/ (Spanish)

## Build Static Site

```bash
hugo
```

Generated output is written to `public/`.

## Deploy

`scDeploy.sh` builds the site and syncs `public/` to a live FTP host with [lftp](https://lftp.yar.ru/).

```bash
brew install lftp
cp .env.deploy.example .env.deploy   # fill in FTP_HOST, FTP_USER, FTP_PASS, FTP_REMOTE_DIR, FTP_DEPLOY_MARKER
./scDeploy.sh --init-marker          # one-time: writes a marker file to the remote folder
./scDeploy.sh --dry-run              # preview what would change
./scDeploy.sh                        # deploy for real
```

Every deploy first checks that `FTP_REMOTE_DIR` still contains the marker
written by `--init-marker`, and asks you to re-type the remote path, before
syncing. This is a safety check against deploying to (and wiping) the wrong
folder — it refuses to touch a remote directory that doesn't have the
expected marker. The sync itself deletes any remote file not present in the
current `public/` build (except the marker), so the destination always ends
up matching the local build exactly.

`.env.deploy` holds live credentials and is gitignored — never commit it.

## Theme

The only required theme submodule is:

- `themes/hugo-book`

