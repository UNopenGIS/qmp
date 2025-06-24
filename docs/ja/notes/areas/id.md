# インドネシア (Indonesia)

## 🌍 基本情報
- **首都**: ジャカルタ (Jakarta)
- **人口**: 約2億7,800万人
- **公用語**: インドネシア語
- **時間帯**: UTC+7〜UTC+9
- **通貨**: インドネシアルピア (IDR)

## Information Source
- [OpenStreetMap Statistics](https://osmstats.neis-one.org/?item=countries&country=Indonesia)

## Notes
インドネシアにおけるOpenStreetMapの活動状況について記録します。

## 📊 OpenStreetMapコミュニティ
- **日別アクティブコントリビューター**: 45人/日
- **コミュニティ規模**: 中規模（成長型）
- **主要活動地域**: ジャカルタ、スラバヤ、メダン
- **技術レベル**: 中級

### OSMコミュニティの状況
- 地図データ整備状況: 島嶼国家として独特の地理的特徴を持つ地域でのマッピング
- コミュニティ活動の特徴: ジャカルタ、スラバヤ等大都市圏での活発な活動
- 主要な課題: 1万7千の島々への対応、災害多発地域での継続的更新

## 🤲 現地OSMコミュニティ

### 組織構造
- **グループ名**: OpenStreetMap Indonesia (OSM-ID)
- **設立**: 2011年
- **法的地位**: 非営利組織
- **メンバー数**: 約500名（アクティブメンバー約45名）
- **運営体制**: 理事会制（7名の理事による運営）

### 主要プロジェクト
- **Disaster Ready**: 防災・減災のための地図整備
- **HOT Indonesia**: 人道支援マッピング
- **Urban Mapping**: 都市部の詳細マッピング
- **Island Mapping**: 離島地域の基礎データ整備

### 年間イベント
- **State of the Map Indonesia**: 年1回の全国イベント
- **Regional Mapathons**: 地域ごとの定期的なマッピングイベント
- **University Outreach**: 大学との連携プログラム
- **Disaster Response Training**: 災害対応訓練

### JICAプロジェクトとの関連
- 防災・減災協力プロジェクト
- インフラ整備支援（港湾、道路、水供給）
- 産業人材育成プログラム
- 環境保全・気候変動対策

### QMPでの取り組み方針
- 防災マッピングの優先実施
- 離島部へのマッピング拡大
- インドネシア語による技術指導
- 地域コミュニティとの協働強化

### 言語対応
- `name`: Indonesia（インドネシア語）
- `name:id`: Indonesia
- `name:en`: Indonesia
- `name:ja`: インドネシア

### インドネシア特有の考慮事項
- 宗教的配慮: イスラム教施設の適切な表現
- 行政区分: 州、県、市の3層構造
- 特殊な地理的要素: 火山、津波リスク地域の表現
- 注意すべき政治的・社会的要因: 多民族・多宗教国家への配慮

### タグ付け例
```
### タグ付け例
```
amenity=school
name=Sekolah Dasar Jakarta
name:id=Sekolah Dasar Jakarta
name:en=Jakarta Elementary School
operator=Kementerian Pendidikan
education:type=primary
addr:city=Jakarta
```

JICAが支援する特定施設の場合：
```
railway=station
name=Stasiun MRT Jakarta
name:id=Stasiun MRT Jakarta
name:en=Jakarta MRT Station
operator=PT MRT Jakarta
funded_by=JICA
project=Jakarta_Mass_Rapid_Transit
opening_date=2019
```
source=survey
name=Jakarta
name:id=Jakarta
name:ja=ジャカルタ
religion=muslim
amenity=place_of_worship
natural=volcano
```

### 注意事項
⚠️ 災害リスク情報は関係機関と連携して正確な情報を記載すること
⚠️ 宗教施設の記載には文化的配慮を行うこと

## 🤝 JICA関連プロジェクト
- **JICAインドネシア事務所**
  - 所在地: Sentral Senayan II, 14th Floor, Jl. Asia Afrika No. 8, Jakarta 10270, Indonesia
  - 電話: ＋62-21-5795-2112
  - FAX: ＋62-21-5795-2116
  - 交通: MRTジャカルタ スナヤン駅より徒歩10分
- **主な支援分野**
  - 防災・減災
  - インフラ整備支援
  - 産業人材育成
  - 環境保全

## 🏷️ 推奨タグ例

### インフラ施設
```
landuse=industrial
name=Kawasan Industri Cikarang
name:id=Kawasan Industri Cikarang
name:en=Cikarang Industrial Estate
operator=PT Jababeka
```

### 災害対策施設
```
amenity=emergency_shelter
name=Pusat Evakuasi Tsunami
name:id=Pusat Evakuasi Tsunami
name:en=Tsunami Evacuation Center
building=yes
evacuation=tsunami
```

### 行政区画
```
boundary=administrative
admin_level=4
name=Provinsi Jawa Barat
name:id=Provinsi Jawa Barat
name:en=West Java Province
```

## 📍 座標系・測地系
- **標準測地系**: DGN95 / Indonesia TM-3 zone 49.2
- **精度要求**: 都市部5m、農村部20m、離島部50m
- **特記事項**: 群島国家特有の測地系対応

## 🌐 言語対応
- **primary**: インドネシア語 (`name:id`)
- **secondary**: 英語 (`name:en`)
- **local**: ジャワ語、スンダ語など
- **注意**: 地域言語の多様性

## 連絡先情報
- **メーリングリスト**: talk-id@openstreetmap.org
- **Telegram**: t.me/OSMIndonesia
- **Facebook**: facebook.com/groups/osm.id
- **メール**: info@openstreetmap.id

### コミュニティの特徴
- インドネシア語を主要言語とし、英語も広く使用
- 防災・減災マッピングの豊富な経験
- HOT（Humanitarian OpenStreetMap Team）との強い連携
- 大学との研究協力が活発

### 課題と挑戦
- 広大な群島部のデータ整備
- 自然災害による地図更新需要
- インターネットアクセスの地域格差
- 持続可能な活動資金の確保

### 支援ニーズ
- 離島部でのマッピングツール
- 衛星画像アクセス権
- 技術トレーニング資料
- コミュニティ運営支援

## ⚠️ マッピング時の注意点
- インドネシアは世界最大の群島国家で、17,000以上の島々があります。
- 火山活動や地震が頻繁に発生する地域では、地形が急激に変化する可能性があります。
- モンスーン気候により、雨季と乾季で水域の範囲が大きく変化します。
- 行政区画の変更が頻繁に行われる可能性があります。
- 文化的・宗教的施設の表記には特別な配慮が必要です。

## 🛠️ 技術的情報
- **推奨エディタ**: iD Editor（インドネシア語対応）
- **画像ソース**: Bing、Maxar、BIG提供画像
- **検証ツール**: OSMCha、Osmose、MapRoulette
- **品質管理**: 週次検証推奨

## 🔗 関連リソース
- [インドネシア地理空間情報庁（BIG）](https://www.big.go.id/)
- [JICA Indonesia Office](https://www.jica.go.jp/indonesia/)
- [HOT Indonesia](https://www.hotosm.org/where-we-work/indonesia/)
- [インドネシア国家防災庁（BNPB）](https://bnpb.go.id/)

## 📈 活動実績
- **2024年**: ジャカルタ首都圏MRTデータ更新
- **コミュニティイベント**: 年6回のマッパソン
- **教育機関連携**: 20大学とのパートナーシップ
- **災害対応**: 5件の緊急マッピング支援

## 🎯 戦略的重要性
インドネシアは、ASEAN最大の経済規模を持ち、世界最大の群島国家として独特の地理的特徴を有しています。近年の経済成長と都市化の進展に伴い、精確な地理空間情報の需要が急増しています。また、自然災害が多い地理的特性から、防災・減災のための地図整備が特に重要視されています。

## 🌟 期待される効果
- **防災対策**: 災害リスクの可視化と対応計画の改善
- **都市開発**: スマートシティ計画の支援
- **環境保全**: 森林保護区域の明確化
- **観光振興**: 観光資源の効果的な発信

---

**courage to map** - ちょっとした勇気で地図を作る 🗺️

*作成日: 2025年06月02日*
