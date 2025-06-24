# it

## Information Source
https://osmstats.neis-one.org/?item=countries&country=Italy

## Notes
イタリアにおけるOpenStreetMapの活動状況について記録します。

### OSMコミュニティの状況
- 1日あたりのアクティブメンバー数: 289人（世界第4位の活発なコミュニティ）
- 地図データ整備状況: 極めて高品質・包括的
  - 主要コントリビューター: cascafico（185,445変更セット）、aaaaaa（156,832変更セット）
  - 活発な個人・組織マッパーが200名以上
- コミュニティ活動の特徴: 歴史的建造物マッピングで世界をリード、文化遺産保護に特化
- 主要な課題: 南北格差の解消と観光業界との連携強化

### JICAプロジェクトとの関連
- イタリア開発協力庁（AICS）との文化遺産保護協力
- 地中海諸国での技術協力プロジェクト
- 文化財保護技術分野での知見共有
- EU・伊日戦略的パートナーシップ下での開発協力

### QMPでの取り組み方針
- イタリアOSMコミュニティとの文化遺産マッピング技術交流
- 地中海・アフリカ諸国での歴史的建造物保護プロジェクト
- 観光地理情報システムの共同開発
- 文化財デジタル化技術の普及

### 言語対応
- `name`: イタリア語名
- `name:it`: イタリア語名（明示的記載）
- `name:en`: 英語名
- `name:ja`: 日本語名（JICAプロジェクト関連の場合）

### タグ付け例
```
name=Basilica di San Pietro
name:it=Basilica di San Pietro
name:en=St. Peter's Basilica
name:ja=サン・ピエトロ大聖堂
amenity=place_of_worship
religion=christian
denomination=catholic
historic=heritage
heritage=1
heritage:operator=unesco
wikidata=Q12512
tourism=attraction
addr:city=Città del Vaticano
project=Italy_Cultural_Heritage
```

### 注意事項
⚠️ GDPR（EU一般データ保護規則）への厳格な準拠が必要
⚠️ 文化財保護法による歴史的建造物撮影・記録の制約に注意
⚠️ バチカン市国の特殊な法的地位を考慮
⚠️ 宗教建築の撮影・マッピングには文化的・宗教的配慮が必要

### 関連リソース
- OpenStreetMap Italia: https://www.openstreetmap.it/
- OSM Italia Forum: https://forum.openstreetmap.it/
- Istituto Geografico Militare: https://www.igmi.org/
- JICA Italy: https://www.jica.go.jp/Resource/italy/

### 統計データ
- 人口: 約5,894万人（2023年）
- 面積: 301,340 km²
- 首都: ローマ
- 主要都市: ローマ、ミラノ、ナポリ、トリノ、パレルモ
- HDI: 0.895（2022年、世界30位）
- インターネット普及率: 74%（2023年）
- 統計情報源: [ISTAT](https://www.istat.it/)

### 技術的情報
- 測地系: RDN2008/UTM (EPSG:7791-7793)  
- タイムゾーン: UTC+1/+2 (Europe/Rome)
- 座標範囲: 35.5°N-47.1°N, 6.6°E-18.5°E
- イタリア語（公用語）
- 地域言語: 南チロル・ドイツ語、フリウリ語、サルデーニャ語等
- 国際語: 英語（OSMコミュニティ内）

### コミュニケーション戦略
- イタリア語でのドキュメント作成
- 英伊バイリンガル対応
- 地域特性を考慮した方言への配慮
- OSMイタリアコミュニティの既存チャンネル活用

## イタリア特有の考慮事項

### 地理的特徴
- 長靴型の半島と島嶼部（シチリア、サルデーニャ等）
- アルプス山脈から地中海まで多様な地形
- 豊富な海岸線と港湾都市
- 火山地域（ヴェスヴィオ、エトナ、ストロンボリ）

### 法制度・規制
- GDPR（EU一般データ保護規則）の適用
- 文化財保護法による建造物記録の制約
- イタリア個人情報保護規則
- バチカン市国との特別な関係

### 文化的配慮
- カトリック文化への深い敬意
- 地域アイデンティティの強い尊重
- 歴史的建造物への特別な配慮
- 美食文化の地理的表現

## 技術的情報

### データソース
- IGM（イタリア軍地理研究所）データ
- ISTAT（国立統計研究所）統計
- 文化財・文化活動・観光省データ
- 各自治体のオープンデータ

### ツール・プラットフォーム
- JOSM（歴史的建造物特化設定）
- iD editor（イタリア語対応）
- イタリア独自の文化財マッピングツール
- QGIS with Italian-specific plugins

### API・連携
- Overpass API for heritage data
- Nominatim（イタリア地名対応）
- Italian tourism APIs
- Vatican City special handling

## 安全性・セキュリティ

### データセキュリティ
- GDPR準拠の厳格な実装
- 文化財情報の適切な管理
- 個人情報の匿名化処理
- イタリア語でのプライバシーポリシー

### 物理的安全性
- 一般的に安全な環境
- 観光地での基本的な注意
- 地震・火山活動への配慮
- 現地コミュニティとの良好な関係

### 法的コンプライアンス
- イタリア法の遵守
- EU規則への準拠
- 文化財保護法の理解
- OSMライセンスの適切な適用

## リソース・参考情報

### 公式サイト
- OpenStreetMap Italia: https://www.openstreetmap.it/
- OSM Italia Forum
- Italian Geographic Military Institute: https://www.igmi.org/

### コミュニティ
- OSM Italia mailing list
- Telegram/Discord channels（イタリア語）
- 地域別マッピンググループ
- State of the Map Italy

### 技術資料
- OSM Italia wiki pages
- Cultural heritage mapping guidelines
- Italian tagging conventions
- Tourism data integration guides

### 学習リソース
- Italian OSM tutorials
- University GIS courses
- Cultural heritage mapping workshops
- Tourism industry training programs

このドキュメントは、イタリアでのOSM活動とQMP実装の基礎資料として活用してください。イタリアの豊富な文化遺産マッピング経験を学び、歴史的建造物の記録技術を向上させましょう 🇮🇹

---

**courage to map** - ちょっとした勇気で地図を作る 🗺️

*最終更新: 2025年01月29日*
