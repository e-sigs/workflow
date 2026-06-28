#!/usr/bin/env bash
set -euo pipefail

title="${1:-}"
if [[ -z "$title" ]]; then
  echo "usage: $0 \"Decision title\"" >&2
  exit 2
fi

slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-|-$//g')
date=$(date +%Y-%m-%d)
file="docs/adr/${date}-${slug}.md"

cp templates/adr.md "$file"
sed -i.bak "s/# ADR: <decision title>/# ADR: ${title}/" "$file"
rm -f "${file}.bak"
echo "$file"
