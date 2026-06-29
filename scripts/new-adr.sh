#!/usr/bin/env bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

title="${1:-}"
if [[ -z "$title" ]]; then
  echo "usage: $0 \"Decision title\"" >&2
  exit 2
fi

slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-|-$//g')
date=$(date +%Y-%m-%d)
file="docs/adr/${date}-${slug}.md"

escaped_title=$(printf '%s\n' "$title" | sed -e 's/[\/&]/\\&/g')
cp templates/adr.md "$file"
sed -i.bak "s/# ADR: <decision title>/# ADR: ${escaped_title}/" "$file"
rm -f "${file}.bak"
echo "$file"
