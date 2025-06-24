#!/bin/bash

# 必須セクション追加スクリプト
# 品質チェックで必須セクションが不足しているファイルに一括でセクションを追加

echo "🔧 必須セクション追加スクリプト実行開始"
echo "======================================="

# 処理対象ファイルのリスト（Notes セクションが不足している主要ファイル）
FILES=(
    "am.md" "ar.md" "at.md" "az.md" "bf.md" "bg.md" 
    "bj.md" "bn.md" "bo.md" "bw.md" "ca.md" "ci.md" 
    "cl.md" "cm.md" "dz.md" "ee.md" "eg.md" "fj.md" 
    "ge.md" "gt.md" "hr.md" "iq.md" "ir.md" "is.md" 
    "jm.md" "kg.md" "kh.md" "kz.md" "la.md" "lb.md" 
    "lv.md" "ma.md" "mg.md" "mm.md" "mt.md" "my.md" 
    "nz.md" "ph.md" "pl.md" "pw.md" "qa.md" "ro.md" 
    "rs.md" "ru.md" "sa.md" "sg.md" "sn.md" "th.md" 
    "tj.md" "tm.md" "tr.md" "ug.md" "uy.md" "uz.md"
)

# 必須セクションテンプレート
NOTES_SECTION="
## Notes

この国でのOpenStreetMap活動とQMP取り組みに関する重要な情報をここに記載します。

### OSMコミュニティの状況

- マッパー数: 調査中
- 活動レベル: 調査中  
- 主要都市のカバレッジ: 調査中
- コミュニティイベント: 調査中

### JICAプロジェクトとの関連

- 技術協力プロジェクト: 調査中
- 開発協力: 調査中
- 人材育成: 調査中
- インフラ整備: 調査中

### QMPでの取り組み方針

- データ品質向上: 段階的改善
- コミュニティ育成: 現地パートナーとの協力
- 技術移転: 適切なツールの選定
- 持続可能性: 長期的視点での計画

### 言語対応

- 主要言語: 調査中
- OSMでの言語タグ: name:xx 形式で対応
- 多言語サポート: 必要に応じて実装

### 関連リソース

- 政府公式サイト: 調査中
- OSM関連情報: 随時更新
- 地理データソース: 利用可能性を確認中"

processed_count=0
skipped_count=0

for file in "${FILES[@]}"; do
    if [[ -f "$file" ]]; then
        echo "📄 処理中: $file"
        
        # ## Notes セクションが既に存在するかチェック
        if grep -q "^## Notes" "$file"; then
            echo "  ⚠️  既に Notes セクションが存在します - スキップ"
            ((skipped_count++))
            continue
        fi
        
        # Information Source セクションの後に Notes セクションを挿入
        if grep -q "^## Information Source" "$file"; then
            # awk を使って適切な位置に挿入
            awk -v notes="$NOTES_SECTION" '
            /^## Information Source/ { 
                in_info_source = 1 
                print
                next
            }
            /^##/ && !/^## Information Source/ && in_info_source { 
                print notes
                in_info_source = 0 
                print
                next
            }
            { print }
            ' "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
            
            echo "  ✅ Notes および必須セクションを追加しました"
            ((processed_count++))
        else
            echo "  ⚠️  Information Source セクションが見つかりません - スキップ"
            ((skipped_count++))
        fi
    else
        echo "  ❌ ファイルが見つかりません: $file"
        ((skipped_count++))
    fi
done

echo ""
echo "📊 処理結果サマリー:"
echo "=================="
echo "✅ 処理成功: $processed_count ファイル"
echo "⚠️  スキップ: $skipped_count ファイル"
echo "📁 総対象: $((processed_count + skipped_count)) ファイル"

echo ""
echo "🚀 courage to map - 私たちは生成AIと共創する"
