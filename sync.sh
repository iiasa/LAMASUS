#!/bin/bash
working_copy="../project_pages_template"
built_html="_build/html"
if [ ! -d ".git" ]; then
  echo "The current directory must be the Data_Stewards gh-pages branch working copy!"  1>&2
  exit 1
fi
if [ ! -d "${working_copy}" ]; then
  echo "There must be a ${working_copy} directory!"  1>&2
  exit 1
fi
if [ ! -d "${working_copy}/${built_html}" ]; then
  echo "There must be built html at ${working_copy}/${built_html}!"  1>&2
  exit 1
fi
rsync -avh ${working_copy}/${built_html}/ .
rsync -avh ${working_copy}/${built_html}/_images/ ./_images --delete
rsync -avh ${working_copy}/${built_html}/_static/ ./_static --delete
rsync -avh ${working_copy}/${built_html}/IT-infrastructure/ ./IT-infrastructure --delete
rsync -avh ${working_copy}/${built_html}/managing-code-and-data/ ./managing-code-and-data --delete
