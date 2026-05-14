#!/bin/bash
# ============================================================
# build.sh — 產出 ChatGPT / Gemini 合併版本
# 使用方式：在專案根目錄執行 bash build.sh
# 每次更新任何 references/ 或 updates/ 檔案後執行一次
# ============================================================

OUTPUT="chatgpt-merged-version.md"
TIMESTAMP=$(date "+%Y/%m/%d %H:%M")

echo "▶ 開始建置合併版本..."

# 寫入檔頭
cat > "$OUTPUT" << EOF
# Campaign Brief Generator — 合併版本（ChatGPT / Gemini 用）
> **此檔案由 build.sh 自動產出，請勿手動編輯。**
> 如需修改，請編輯對應的來源檔案，再重新執行 build.sh。
> 最後建置時間：$TIMESTAMP

---

EOF

# 依序合併各檔案
FILES=(
    "SKILL.md"
    "references/01_marketing-logic.md"
    "references/02_creative-psychology.md"
    "references/03_copywriting-rules.md"
    "references/04_channel-specs.md"
    "references/05_visual-prompt-engine.md"
    "assets/brief-template.md"
    "updates/psychology-updates.md"
    "updates/copywriting-updates.md"
    "updates/brand-cases.md"
)

for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        echo "  ✓ 加入：$FILE"
        echo "" >> "$OUTPUT"
        echo "---" >> "$OUTPUT"
        echo "" >> "$OUTPUT"
        cat "$FILE" >> "$OUTPUT"
        echo "" >> "$OUTPUT"
    else
        echo "  ⚠ 找不到檔案：$FILE（跳過）"
    fi
done

echo ""
echo "✅ 合併完成：$OUTPUT"
echo "   檔案大小：$(wc -c < "$OUTPUT") bytes"
echo ""
echo "下一步：將 $OUTPUT 的全文貼入 ChatGPT 或 Gemini 的第一則訊息即可使用。"
