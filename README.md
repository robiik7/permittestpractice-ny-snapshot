# NY Snapshot GitHub Workflow

This repository automates downloading the New York section of permittestpractice.com, remaps links, and deploys to GitHub Pages (or any static host).

## Usage
1. **Run manually**: Go to Actions → Download NY Snapshot & Deploy → Run workflow.
2. **Schedule**: Automatically runs every Monday at 2 AM UTC.

## Files
- `download_ny.sh`: Wget-based mirror script
- `link_cleanup_script.sh`: Shell script to update internal links
- `.github/workflows/download-and-deploy.yml`: CI workflow configuration

## Deployment
On success, static site is published to the `gh-pages` branch. Serve from `https://robiik7.github.io/permittestpractice-ny-snapshot/` or pull and upload to any server.
