# 林振龍陶藝 · Lin Chen-Long Fine Art

Static bilingual website for ceramist Lin Chen-Long (二谷), migrated from the old
Weebly site (which shuts down in September 2026). No build tools, no dependencies —
just plain HTML and CSS, ready for GitHub Pages.

## Structure

```
index.html            中文首頁
about.html            作家簡介
works.html            作品集錦
exhibitions.html      展覽選錄
publications.html     出版品
media.html            相關報導 (video + three essays)
contact.html          聯絡方式
en/                   English versions of all pages
assets/css/style.css  the one stylesheet
assets/img/           all photos (see below)
download_images.sh    one-time script to pull photos from Weebly
```

## Step 1 — get the photos (do this first, before Weebly closes)

Open a terminal in this folder and run:

```
bash download_images.sh
```

It downloads every photo from the old site into `assets/img/` with the filenames
the pages expect. Takes a minute or two. If any line says FAILED, save that photo
manually from the old site with the same filename.

## Step 2 — preview locally

Just double-click `index.html`, or for a proper local server:

```
python3 -m http.server 8000
```

then open http://localhost:8000

## Step 3 — put it on GitHub Pages

1. Create a new repository on github.com (e.g. `ergulin-site`). Public is fine.
2. Upload everything in this folder — either drag-and-drop on the GitHub website
   ("Add file" > "Upload files"), or with git:

   ```
   git init
   git add .
   git commit -m "Lin Chen-Long site"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/ergulin-site.git
   git push -u origin main
   ```

3. In the repo, go to **Settings > Pages**, set Source to
   **Deploy from a branch**, branch **main**, folder **/ (root)**, and Save.
4. After a minute the site is live at
   `https://YOUR-USERNAME.github.io/ergulin-site/`

A custom domain (e.g. ergulin.com) can be added later on the same Settings > Pages screen.

## Adding new works

Each artwork on `works.html` / `en/gallery.html` is one `<figure class="work">`
block. Copy an existing block, change the image filename and the caption, and drop
the new photo into `assets/img/`. The dimension-and-year caption convention
(e.g. `29 × 27 × 20 cm, 2018`) is just text — write whatever fits the new piece.
