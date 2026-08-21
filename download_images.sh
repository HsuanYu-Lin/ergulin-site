#!/bin/bash
# ------------------------------------------------------------------
# Downloads every photo from the old Weebly site into assets/img/
# with the clean filenames the new site expects.
#
# Run this ONCE from the site folder, before Weebly shuts down:
#     bash download_images.sh
#
# Requires curl (already installed on Mac; on Windows use Git Bash).
# ------------------------------------------------------------------
set -u
BASE="https://ergulin.weebly.com/uploads/1/1/9/6/119673670"
OUT="assets/img"
mkdir -p "$OUT"

get () {  # get <weebly-filename> <local-filename>
  if [ -s "$OUT/$2" ]; then echo "skip  $2 (already exists)"; return; fi
  echo "fetch $2"
  curl -fsSL "$BASE/$1" -o "$OUT/$2" || echo "  !! FAILED: $1"
}

# ---- artworks (original full-size versions) ----
get "68x68-2018_orig.jpg"                 "68x68-2018.jpg"
get "29x27x20-2018_1_orig.jpg"            "29x27x20-2018.jpg"
get "40x17x6-5-2018_1_orig.jpg"           "40x17x6-5-2018.jpg"
get "40x20x6-2018_1_orig.jpg"             "40x20x6-2018.jpg"
get "41x17x6-5-2018_1_orig.jpg"           "41x17x6-5-2018.jpg"
get "29x23x49-5-2018_orig.jpg"            "29x23x49-5-2018.jpg"
get "25x25x50-5-2018_orig.jpg"            "25x25x50-5-2018.jpg"
get "24x23x56-2018_orig.jpg"              "24x23x56-2018.jpg"
get "23x22x63-2018_orig.jpg"              "23x22x63-2018.jpg"
get "32x26x68-2018_orig.jpg"              "32x26x68-2018.jpg"
get "48x66-2018_orig.jpg"                 "48x66-2018.jpg"
get "95x58-2016_orig.jpg"                 "95x58-2016.jpg"
get "47-5x25x100-5-2012_orig.jpg"         "47-5x25x100-5-2012.jpg"
get "17x17-5x30-2011_orig.jpg"            "17x17-5x30-2011.jpg"
get "e7-a9-ba-e9-96-93-e9-87-89-e5-bd-a9-e4-b9-8b-e4-ba-8c-e5-8d-8153x25x63-2011_orig.jpg" "space-glaze-ii-53x25x63-2011.jpg"

# ---- portraits & highlight ----
get "edited/497910347.jpg"                "portrait-about.jpg"
get "edited/16_3.jpg"                     "portrait-studio.jpg"
get "editor/209517445.jpg"                "exhibition-2018.jpg"

# ---- exhibition posters ----
get "200811_orig.jpg"                     "exh-200811.jpg"
get "200901-2_orig.jpg"                   "exh-200901-2.jpg"
get "200905_1_orig.jpg"                   "exh-200905_1.jpg"
get "200905_orig.jpg"                     "exh-200905.jpg"
get "201011_orig.jpg"                     "exh-201011.jpg"
get "201201_orig.jpg"                     "exh-201201.jpg"
get "201210_orig.jpg"                     "exh-201210.jpg"
get "201302_orig.jpg"                     "exh-201302.jpg"
get "201303_orig.jpg"                     "exh-201303.jpg"
get "201306_orig.jpg"                     "exh-201306.jpg"
get "201410-40_orig.jpg"                  "exh-201410-40.jpg"
get "201508_orig.jpg"                     "exh-201508.jpg"
get "201510-2_orig.jpg"                   "exh-201510-2.jpg"
get "201710_orig.jpg"                     "exh-201710.jpg"
get "201711_orig.jpg"                     "exh-201711.jpg"

# ---- book covers ----
get "1991_2_orig.jpg"                     "pub-1991.jpg"
get "1992_2_orig.jpg"                     "pub-1992.jpg"
get "2010_2_orig.jpg"                     "pub-2010.jpg"
get "2012_orig.jpg"                       "pub-2012-shape.jpg"
get "2012_4_orig.jpg"                     "pub-2012-space.jpg"

echo ""
echo "Done. Check assets/img/ — any line marked FAILED needs a manual save"
echo "from the old site (right-click the photo > Save Image As, use the same filename)."
