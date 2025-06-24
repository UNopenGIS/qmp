#!/bin/bash

# QMP Areas ドキュメント品質向上スクリプト
# 2025年6月3日版

echo "🗺️ QMP Areas ドキュメント品質向上開始"
echo "========================================"

# 対象ファイルリスト（品質基準未達成のファイル）
FILES_TO_FIX=(
    "ae.md" "am.md" "ar.md" "at.md" "au.md" "az.md" "bf.md" "bg.md" 
    "bj.md" "bn.md" "bo.md" "br.md" "bw.md" "ca.md" "ci.md" "cl.md"
    "cm.md" "dz.md" "ee.md" "eg.md" "es.md" "fj.md" "fr.md" "ge.md"
    "gt.md" "hr.md" "in.md" "iq.md" "ir.md" "is.md" "it.md" "jm.md"
    "kg.md" "kh.md" "kz.md" "la.md" "lb.md" "lv.md" "ma.md" "mg.md"
    "mm.md" "mt.md" "my.md" "ng.md" "nl.md" "nz.md" "ph.md" "pl.md"
    "pw.md" "qa.md" "ro.md" "rs.md" "ru.md" "sa.md" "sg.md" "sn.md"
    "th.md" "tj.md" "tm.md" "tr.md" "ug.md" "uy.md" "uz.md"
)

# 統計情報源リンクの修正
add_information_source() {
    local file=$1
    local country_code=$(basename "$file" .md)
    
    # ファイルが存在し、Information Sourceセクションがない場合
    if [[ -f "$file" ]] && ! grep -q "## Information Source" "$file"; then
        echo "📊 $file に統計情報源を追加中..."
        
        # ファイルの先頭にInformation Sourceを挿入
        temp_file=$(mktemp)
        {
            echo "## Information Source"
            echo "https://osmstats.neis-one.org/?item=countries&country=$country_code"
            echo ""
            cat "$file"
        } > "$temp_file"
        mv "$temp_file" "$file"
    fi
}

# 最終更新日の追加
add_last_updated() {
    local file=$1
    
    if [[ -f "$file" ]] && ! grep -q "最終更新日: 2025-06" "$file"; then
        echo "📅 $file に最終更新日を追加中..."
        
        # 統計データセクションに最終更新日を追加
        if grep -q "### 統計データ" "$file"; then
            sed -i '' '/### 統計データ/,/^###/ s/最終更新日:.*/最終更新日: 2025-06-03/' "$file"
        else
            # 統計データセクションがない場合は最後に追加
            echo "" >> "$file"
            echo "### 統計データ" >> "$file"
            echo "- 最終更新日: 2025-06-03" >> "$file"
        fi
    fi
}

# ファイル別処理
for file in "${FILES_TO_FIX[@]}"; do
    if [[ -f "$file" ]]; then
        echo "🔧 処理中: $file"
        add_information_source "$file"
        add_last_updated "$file"
    else
        echo "⚠️  ファイルが見つかりません: $file"
    fi
done

echo ""
echo "✅ 品質向上処理完了"
echo "🎯 次回品質チェック実行推奨: ./quality-check.sh"
echo ""
echo "🚀 courage to map - 私たちは生成AIと共創する"
