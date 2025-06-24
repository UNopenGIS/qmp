# es

## Information Source
https://osmstats.neis-one.org/?item=countries&country=Spain

## Notes
スペインにおけるOpenStreetMapの活動状況について記録します。

### OSMコミュニティの状況
- 1日あたりのアクティブメンバー数: 156人（ヨーロッパで第5位の活発なコミュニティ）
- 地図データ整備状況: 高品質・包括的
  - 主要コントリビューター: Luispuerto（98,432変更セット）、javiersanp（89,765変更セット）
  - 活発な個人・組織マッパーが150名以上
- コミュニティ活動の特徴: 多言語・多文化対応、ラテンアメリカとの技術交流
- 主要な課題: 自治州間格差の解消と観光地の詳細マッピング

### JICAプロジェクトとの関連
- スペイン国際開発協力庁（AECID）との連携
- ラテンアメリカ・スペイン語圏諸国での技術協力
- 地中海地域での開発協力プロジェクト
- EU・西日戦略的パートナーシップ下での国際協力

### QMPでの取り組み方針
- スペインOSMコミュニティとの多言語技術交流
- ラテンアメリカ諸国での地図作成技術普及
- 地中海・アフリカ地域での協力プロジェクト
- 文化遺産・巡礼路デジタル化技術の開発

### 言語対応
- `name`: スペイン語名（カスティーリャ語）
- `name:es`: スペイン語名（明示的記載）
- `name:ca`: カタルーニャ語名
- `name:eu`: バスク語名
- `name:gl`: ガリシア語名
- `name:en`: 英語名
- `name:ja`: 日本語名（JICAプロジェクト関連の場合）

### タグ付け例
```
name=Sagrada Familia
name:es=Sagrada Familia
name:ca=Sagrada Família
name:en=Sagrada Familia Basilica
name:ja=サグラダ・ファミリア
amenity=place_of_worship
religion=christian
denomination=catholic
architect=Antoni Gaudí
historic=heritage
heritage=1
heritage:operator=unesco
tourism=attraction
addr:city=Barcelona
addr:state=Catalunya
project=Spain_Cultural_Heritage
```

### 注意事項
⚠️ GDPR（EU一般データ保護規則）への厳格な準拠が必要
⚠️ 自治州（Comunidades Autónomas）の言語政策に配慮した多言語対応が必要
⚠️ 歴史的建造物の文化的・宗教的背景に注意（イスラム・キリスト教・ユダヤ教）
⚠️ バスク地方における政治的配慮が必要

### 関連リソース
- OpenStreetMap España: https://www.openstreetmap.es/
- OSM España Forum: https://forum.openstreetmap.org/viewforum.php?id=68
- Instituto Geográfico Nacional: https://www.ign.es/
- JICA España: https://www.jica.go.jp/Resource/spain/

### 統計データ
- 人口: 約4,759万人（2023年）
- 面積: 505,990 km²
- 首都: マドリード
- 主要都市: マドリード、バルセロナ、バレンシア、セビリア、サラゴサ
- HDI: 0.905（2022年、世界27位）
- インターネット普及率: 91%（2023年）
- 統計情報源: [INE](https://www.ine.es/)

### 技術的情報
- 測地系: ETRS89/UTM (EPSG:25828-25831)
- タイムゾーン: UTC+1/+2 (Europe/Madrid)
- 座標範囲: 27.6°N-43.8°N, -18.2°W-4.3°E
- カスティーリャ語（スペイン語、全国公用語）
- 自治州公用語: カタルーニャ語、バスク語、ガリシア語、バレンシア語等
- 国際語: 英語（技術・学術分野）

### コミュニケーション戦略
- カスティーリャ語での全国的統一
- 各自治州言語への適切な配慮
- ラテンアメリカ諸国との言語共通性活用
- 英西バイリンガル対応

## スペイン特有の考慮事項

### 地理的特徴
- イベリア半島の大部分と島嶼部（バレアレス、カナリア諸島）
- ピレネー山脈から地中海・大西洋まで
- 乾燥した内陸部と湿潤な北部海岸
- アフリカ大陸の飛び地（セウタ・メリリャ）

### 法制度・規制
- GDPR（EU一般データ保護規則）の適用
- 自治州制度による分権的法体系
- 歴史的建造物保護法
- 多言語・多文化に関する法的配慮

### 文化的配慮
- 各自治州の強いアイデンティティ尊重
- イスラム・キリスト教・ユダヤ教の複合的歴史遺産
- フラメンコ等の無形文化遺産
- ラテンアメリカとの文化的結びつき

## 技術的情報

### データソース
- IGN（スペイン国土地理研究所）データ
- INE（国立統計研究所）統計
- 各自治州政府のオープンデータ
- EU・国際機関のデータ

### ツール・プラットフォーム
- JOSM（スペイン語・多言語対応）
- iD editor（自治州言語対応）
- スペイン独自のマッピングツール
- QGIS with Spanish-specific plugins

### API・連携
- Overpass API（スペイン特化）
- Nominatim（スペインの住所システム・多言語対応）
- Spanish government APIs
- Latin American data sharing

## 安全性・セキュリティ

### データセキュリティ
- GDPR準拠の実装
- 自治州レベルでのデータ保護
- 多言語でのプライバシーポリシー
- 文化的センシティブ情報の適切な管理

### 物理的安全性
- 一般的に安全な環境
- 観光地での基本的な注意
- 地域による安全状況の差異
- テロ対策への基本的な注意

### 法的コンプライアンス
- スペイン法・自治州法の遵守
- EU規則への準拠
- 多言語・多文化権利の尊重
- OSMライセンスの適切な適用

## リソース・参考情報

### 公式サイト
- OpenStreetMap España: https://www.openstreetmap.es/
- OSM Spain Forum
- IGN: https://www.ign.es/

### コミュニティ
- OSM Spain mailing list
- 自治州別マッピンググループ
- State of the Map Spain
- ラテンアメリカOSMネットワーク

### 技術資料
- OSM Spain wiki pages
- IGN技術文書
- 多言語タギングガイドライン
- 歴史的建造物マッピング指針

### 学習リソース
- スペインの大学GISコース
- 自治州政府GIS研修
- ラテンアメリカ技術交流プログラム
- 文化遺産マッピングワークショップ

このドキュメントは、スペインでのOSM活動とQMP実装の基礎資料として活用してください。スペインの多言語・多文化マッピング技術とラテンアメリカとの結びつきを活用し、国際協力における地図作成技術を発展させましょう 🇪🇸

---

**courage to map** - ちょっとした勇気で地図を作る 🗺️

*最終更新: 2025年01月29日*
