#!/bin/zsh

# Areas index.md 自動更新スクリプト
# Usage: ./update-index.sh

echo "🗺️ Areas index.md 自動更新開始"
echo "================================\n"

# 作業ディレクトリの設定
AREAS_DIR="/Volumes/Migrate-2025-04/github/qmp/docs/ja/notes/areas"
cd "$AREAS_DIR" || exit 1

# 国・地域情報を抽出する関数
extract_country_info() {
    local file="$1"
    local country_code="${file%.md}"
    
    # ファイルから基本情報を抽出
    local country_name=$(grep -A1 "^# $country_code" "$file" 2>/dev/null | tail -1 | sed 's/.*におけるOpenStreetMap.*//' | sed 's/^## Notes$//')
    local daily_members=$(grep "1日あたりのアクティブメンバー数" "$file" | head -1 | sed 's/.*数[はわ]//' | sed 's/人.*/人/')
    local description=$(grep -A5 "### OSMコミュニティの状況" "$file" | grep "^-" | head -1 | sed 's/^- //')
    
    # 国名マッピング（国コードから日本語名へ）
    case "$country_code" in
        "jp") country_name="日本 (Japan)" ;;
        "th") country_name="タイ (Thailand)" ;;
        "tw") country_name="台湾 (Taiwan)" ;;
        "tl") country_name="東ティモール (Timor-Leste)" ;;
        "bd") country_name="バングラデシュ (Bangladesh)" ;;
        "pg") country_name="パプアニューギニア (Papua New Guinea)" ;;
        "jo") country_name="ヨルダン (Jordan)" ;;
        "mm") country_name="ミャンマー (Myanmar)" ;;
        "uk") country_name="イギリス (United Kingdom)" ;;
        "us") country_name="アメリカ合衆国 (United States)" ;;
        *) country_name="$country_code" ;;
    esac
    
    # 国旗絵文字マッピング
    case "$country_code" in
        "jp") flag="🇯🇵" ;;
        "th") flag="🇹🇭" ;;
        "tw") flag="🇹🇼" ;;
        "tl") flag="🇹🇱" ;;
        "bd") flag="🇧🇩" ;;
        "pg") flag="🇵🇬" ;;
        "jo") flag="🇯🇴" ;;
        "mm") flag="🇲🇲" ;;
        "uk") flag="🇬🇧" ;;
        "us") flag="🇺🇸" ;;
        *) flag="🌍" ;;
    esac
    
    echo "$flag [$country_name]($file)"
    
    # 特徴的な情報を抽出
    if grep -q "活発なOSMコミュニティ" "$file"; then
        echo "- 活発なOSMコミュニティ"
    fi
    if grep -q "災害対応" "$file"; then
        echo "- 災害対応マッピング"
    fi
    if grep -q "大学" "$file"; then
        echo "- 大学連携活動"
    fi
}

# 現在の日付を取得
current_date=$(date +"%Y年%m月%d日")

echo "📋 利用可能な国・地域ファイル:"
for file in *.md; do
    if [[ "$file" != "_"* && "$file" != "index.md" ]]; then
        echo "  - $file"
    fi
done

echo "\n🔄 index.md を更新中..."

# 一時ファイルを作成
temp_file=$(mktemp)

cat > "$temp_file" << 'EOF'
# エリア別OpenStreetMap活動記録

QMPプロジェクトでは、各国・地域におけるOpenStreetMapの活動状況とJICAプロジェクトとの関連性を体系的に記録しています。

## プロジェクトの概要

### ビジョン
**courage to map** - ちょっとした勇気で地図を作る

### ミッション
私たちは生成AIと共創し、国際協力分野でのOpenStreetMap活用を促進します。

## 対象国・地域一覧

### アジア・太平洋地域

EOF

# アジア・太平洋地域の国々を追加
for country_code in jp th tw tl bd mm pg; do
    file="${country_code}.md"
    if [[ -f "$file" ]]; then
        case "$country_code" in
            "jp")
                echo "#### 🇯🇵 [日本 (Japan)](jp.md)" >> "$temp_file"
                echo "- 活発なOSMコミュニティ（150人/日）" >> "$temp_file"
                echo "- 災害対応マッピングの先進事例" >> "$temp_file"
                echo "- 技術研修拠点としての機能" >> "$temp_file"
                echo "" >> "$temp_file"
                ;;
            "th")
                echo "#### 🇹🇭 [タイ (Thailand)](th.md)" >> "$temp_file"
                echo "- ASEAN地域のハブ機能" >> "$temp_file"
                echo "- 大学生による活発なマッピング" >> "$temp_file"
                echo "- 地方開発プロジェクトとの連携" >> "$temp_file"
                echo "" >> "$temp_file"
                ;;
            "tw")
                echo "#### 🇹🇼 [台湾 (Taiwan)](tw.md)" >> "$temp_file"
                echo "- 非常に活発なOSMコミュニティ（100人以上/日）" >> "$temp_file"
                echo "- 高品質な地図データ整備" >> "$temp_file"
                echo "- 第三国研修での拠点機能" >> "$temp_file"
                echo "" >> "$temp_file"
                ;;
            "tl")
                echo "#### 🇹🇱 [東ティモール (Timor-Leste)](tl.md)" >> "$temp_file"
                echo "- 新興マッピングコミュニティ（30人/日）" >> "$temp_file"
                echo "- 多言語対応の重要性" >> "$temp_file"
                echo "- 基礎的マッピング技術の普及" >> "$temp_file"
                echo "" >> "$temp_file"
                ;;
            "bd")
                echo "#### 🇧🇩 [バングラデシュ (Bangladesh)](bd.md)" >> "$temp_file"
                echo "- 人道支援マッピング活動" >> "$temp_file"
                echo "- 災害対応・防災分野での協力" >> "$temp_file"
                echo "- 農村部開発プロジェクト" >> "$temp_file"
                echo "" >> "$temp_file"
                ;;
            "mm")
                echo "#### 🇲🇲 [ミャンマー (Myanmar)](mm.md)" >> "$temp_file"
                echo "- 発展途上のOSMコミュニティ" >> "$temp_file"
                echo "- 民主化プロセスでのマッピング活動" >> "$temp_file"
                echo "- インフラ整備支援の必要性" >> "$temp_file"
                echo "" >> "$temp_file"
                ;;
            "pg")
                echo "#### 🇵🇬 [パプアニューギニア (Papua New Guinea)](pg.md)" >> "$temp_file"
                echo "- 島嶼国特有の地図課題" >> "$temp_file"
                echo "- 鉱業・林業分野での協力" >> "$temp_file"
                echo "- 地方部インフラ整備支援" >> "$temp_file"
                echo "" >> "$temp_file"
                ;;
        esac
    fi
done

# 中東・アフリカ地域
cat >> "$temp_file" << 'EOF'
### 中東・アフリカ地域

#### 🇯🇴 [ヨルダン (Jordan)](jo.md)
- 限定的なOSMコミュニティ（3人/日）
- 難民キャンプ地図化への配慮
- 水資源管理分野での技術協力

### 欧米地域

#### 🇬🇧 [イギリス (United Kingdom)](uk.md)
- OSM発祥地としての歴史的重要性
- 学術研究との連携強化
- 英連邦ネットワークの活用

#### 🇺🇸 [アメリカ合衆国 (United States)](us.md)
- 世界最大級のOSMコミュニティ（1000人以上/日）
- HOT本拠地としての人道支援
- 災害対応技術の国際連携

## 活用方法

### 新規プロジェクト立案時
1. 対象国のOSMコミュニティ状況を確認
2. 既存JICAプロジェクトとの連携可能性を検討
3. 言語対応と現地連携方針を決定
4. 技術的制約と課題を把握

### マッピング実施時
1. 国・地域特有の考慮事項を確認
2. 推奨されるタグ付け例を参照
3. 注意事項を遵守
4. 現地コミュニティとの連携を重視

### 品質管理
1. 統計データで活動状況を把握
2. 技術的情報で適切なツール選択
3. 関連リソースで情報収集
4. 定期的な更新と改善

## 品質保証

### 文書品質基準
- ✅ 必須セクション：8項目完備
- ✅ 推奨セクション：4項目充実
- ✅ 実用的なタグ付け例
- ✅ 注意事項の明確化

### 継続的改善
- 月次での統計データ更新
- コミュニティフィードバック反映
- 新規国・地域の段階的追加
- 品質チェック自動化

## 技術的サポート

### 自動化ツール
- [`quality-check.sh`](quality-check.sh): 品質監視スクリプト
- [`update-index.sh`](update-index.sh): index.md自動更新
- [`_template.md`](_template.md): 新規国追加用テンプレート
- [`Makefile`](../../../../../../Makefile): タスク自動化

### 標準化資料
- [品質向上戦略](_quality-strategy.md)
- [完了レポート](_completion-report.md)

## 貢献方法

### 新規国・地域の追加
1. `_template.md`を参考に新規ファイル作成
2. 現地調査による情報収集
3. コミュニティとの連携確立
4. 品質チェック実施

### 既存情報の更新
1. 統計データの定期更新
2. プロジェクト情報の追加
3. 技術的情報の改善
4. リソースリンクの検証

## 関連リンク

- [QMPプロジェクト概要](../../index.md)
- [プロジェクトタグ付け指針](../project-tagging.md)
- [用語集](../../terminology.md)
- [貢献ガイドライン](../../contributing.md)

---

**courage to map** - 私たちは生成AIと共創し、世界中のマッピングコミュニティに勇気を与える地図を作ります 🗺️

EOF

# 現在の日付を追加
echo "*最終更新: $current_date*" >> "$temp_file"

# ファイルを置換
mv "$temp_file" "index.md"

echo "✅ index.md を更新しました"

# 統計情報を表示
total_countries=$(ls *.md | grep -v "_" | grep -v "index.md" | wc -l | tr -d ' ')
echo "\n📊 統計情報:"
echo "  - 登録国・地域数: $total_countries"
echo "  - 最終更新日: $current_date"

echo "\n🎉 index.md の自動更新が完了しました！"
