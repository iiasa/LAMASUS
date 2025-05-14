#!/bin/bash
find -type f | xargs -I {} chmod 664 "{}"
find -type d | xargs -I {} chmod 755 "{}"
chmod 775 cleanup.sh
chmod 755 sync.sh
find -type f -iname '*.html' | xargs -I {} dos2unix "{}"
find -type f -iname '*.txt' | xargs -I {} dos2unix "{}"
