#!/usr/bin/env bash
# ドキュメントを正しい状態に戻す（デモのリセット用）
set -euo pipefail
cd "$(dirname "$0")"
perl -0pi -e 's/npm run setup/npm run bootstrap/g' README.md
echo "healed: README says 'npm run bootstrap'"
