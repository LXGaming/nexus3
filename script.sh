#!/bin/bash

currentVersion=$(git describe --tags --abbrev=0)
latestVersion=v$(git -c "versionsort.suffix=-" \
    ls-remote --refs --sort="version:refname" --tags https://github.com/sonatype/docker-nexus3 \
    | tail --lines=1 \
    | cut --delimiter="/" --fields=3)

echo "Current Version: $currentVersion"
echo "Latest Version: $latestVersion"

if [[ "$currentVersion" == "$latestVersion" ]]; then
  echo "Everything up-to-date"
  exit 0
fi

git push origin "$latestVersion"