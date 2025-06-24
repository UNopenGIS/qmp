#!/bin/zsh

# Areas .mdファイル品質チェックスクリプト
# Usage: ./quality-check.sh

echo "🗺️ QMP Areas .md ファイル品質チェック"
echo "==========================================\n"

# 作業ディレクトリの設定
AREAS_DIR="/Volumes/Migrate-2025-04/github/qmp/docs/ja/notes/areas"
cd "$AREAS_DIR" || exit 1

# 必須セクションの定義
REQUIRED_SECTIONS=(
    "## Information Source"
    "## Notes"
    "### OSMコミュニティの状況"
    "### JICAプロジェクトとの関連"
    "### QMPでの取り組み方針"
    "### 言語対応"
    "### 関連リソース"
)

# 推奨セクションの定義
RECOMMENDED_SECTIONS=(
    "### 統計データ"
    "### 技術的情報"
    "### 注意事項"
)

# カウンタの初期化
total_files=0
complete_files=0

echo "📊 ファイル別品質チェック結果:"
echo "--------------------------------"

for file in *.md; do
    # テンプレートファイルと戦略ファイルはスキップ
    if [[ "$file" == "_"* ]]; then
        continue
    fi
    
    total_files=$((total_files + 1))
    echo "\n🔍 $file:"
    
    # 必須セクションのチェック
    required_score=0
    for section in "${REQUIRED_SECTIONS[@]}"; do
        if grep -q "$section" "$file"; then
            required_score=$((required_score + 1))
            echo "  ✅ $section"
        else
            echo "  ❌ $section (必須)"
        fi
    done
    
    # 推奨セクションのチェック
    recommended_score=0
    for section in "${RECOMMENDED_SECTIONS[@]}"; do
        if grep -q "$section" "$file"; then
            recommended_score=$((recommended_score + 1))
            echo "  ✅ $section"
        else
            echo "  ⚠️  $section (推奨)"
        fi
    done
    
    # 特定要素のチェック
    echo "  📋 詳細チェック:"
    
    # 注意事項マーカー
    if grep -q "⚠️" "$file"; then
        echo "    ✅ 注意事項マーカー使用"
    else
        echo "    ⚠️  注意事項マーカー未使用"
    fi
    
    # タグ付け例
    if grep -q "\`\`\`" "$file"; then
        echo "    ✅ タグ付け例あり"
    else
        echo "    ⚠️  タグ付け例なし"
    fi
    
    # 統計データの更新日
    if grep -q "最終更新日: 2025" "$file"; then
        echo "    ✅ 2025年の更新日記載"
    else
        echo "    ❌ 最新の更新日なし"
    fi
    
    # 情報源URL
    if grep -q "https://osmstats.neis-one.org" "$file"; then
        echo "    ✅ 統計情報源リンクあり"
    else
        echo "    ❌ 統計情報源リンクなし"
    fi
    
    # スコア計算
    total_sections=$((${#REQUIRED_SECTIONS[@]} + ${#RECOMMENDED_SECTIONS[@]}))
    current_score=$((required_score + recommended_score))
    percentage=$((current_score * 100 / total_sections))
    
    echo "  📈 品質スコア: $current_score/$total_sections ($percentage%)"
    
    # 完成度判定（必須セクション100% + 推奨セクション80%以上）
    required_percentage=$((required_score * 100 / ${#REQUIRED_SECTIONS[@]}))
    recommended_percentage=$((recommended_score * 100 / ${#RECOMMENDED_SECTIONS[@]}))
    
    if [[ $required_percentage -eq 100 && $recommended_percentage -ge 67 ]]; then
        complete_files=$((complete_files + 1))
        echo "  🏆 品質基準達成"
    else
        echo "  🔧 改善が必要"
    fi
done

echo "\n📈 全体サマリー:"
echo "================"
echo "📁 対象ファイル数: $total_files"
echo "🏆 品質基準達成: $complete_files"
echo "🔧 改善が必要: $((total_files - complete_files))"

completion_rate=$((complete_files * 100 / total_files))
echo "📊 全体達成率: $completion_rate%"

echo "\n🎯 次のアクション:"
echo "=================="
if [[ $completion_rate -eq 100 ]]; then
    echo "🎉 すべてのファイルが品質基準を達成しています！"
    echo "✨ 定期的な更新とメンテナンスを継続してください"
else
    echo "📝 品質基準未達成のファイルを優先的に改善してください"
    echo "🔄 必須セクションの完全性を最優先に対応してください"
fi

echo "\n🚀 courage to map - 私たちは生成AIと共創する"
