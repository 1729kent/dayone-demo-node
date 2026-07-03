#!/usr/bin/env bash
# ドキュメント腐敗を注入する: README は `npm run setup` のまま、実体を bootstrap に改名済みの状態にする
set -euo pipefail
cd "$(dirname "$0")"
perl -0pi -e 's/npm run bootstrap/npm run setup/g' README.md
echo "rot injected: README says 'npm run setup' but only 'bootstrap' exists"
