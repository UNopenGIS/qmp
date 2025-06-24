#!/bin/zsh

# Areas .mdファイルの統一性チェックと修正スクリプト

echo "🔍 ファイルの統一性チェックを開始します..."

for file in *.md; do
    # テンプレートファイルとレポートファイルはスキップ
    if [[ "$file" == _* ]]; then
        continue
    fi
    
    echo "\n📄 $file を処理中..."
    
    # 1. 更新日の確認と追加
    if ! grep -q "作成日: 2025年" "$file"; then
        echo "  ⚠️ 更新日がないか古いです"
        echo "\n---\n\n**courage to map** - ちょっとした勇気で地図を作る 🗺️\n\n*作成日: 2025年06月02日*" >> "$file"
    fi
    
    # 2. Information Sourceの確認
    if ! grep -q "## Information Source" "$file"; then
        echo "  ⚠️ Information Sourceセクションがありません"
    fi
    
    # 3. 注意事項マーカーの確認
    if ! grep -q "⚠️" "$file"; then
        echo "  ⚠️ 注意事項マーカーが使用されていません"
    fi
    
    # 4. 必須セクションの確認
    for section in "## 🌍 基本情報" "## 📊 OpenStreetMapコミュニティ" "## 🤝 JICA関連プロジェクト" "## 🔗 関連リソース"; do
        if ! grep -q "$section" "$file"; then
            echo "  ⚠️ $section セクションがありません"
        fi
    done
done

echo "\n✅ チェック完了"
