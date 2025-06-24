# bd

## Information Source
https://osmstats.neis-one.org/?item=countries&country=Bangladesh

## Notes
バングラデシュにおけるOpenStreetMapの活動状況について記録します。

### OSMコミュニティの状況
- 直近の活発な貢献者数: 5人（小規模ながらも成長を続けているコミュニティです）
- ダッカ周辺の地図整備が最も進んでいます
- 地方部や農村地域では地図データの充実が課題となっています
- 大学生や若年層による積極的なマッピング活動が行われています
- 人道支援団体による組織的なマッピングプロジェクトも実施されています
- 災害対応時には緊急マッピング体制が整備されています

### JICA関連プロジェクト
- **JICAバングラデシュ事務所**
  - 所在地: JICA BANGLADESH OFFICE, 3rd Floor, Bay's Galleria, 57 Gulshan Avenue（CWS-A19）, Gulshan-1, Dhaka-1212, Bangladesh
  - 電話: （880-2）22229-1897
  - FAX: （880-2）9891689
  - Eメール: bd_oso_rep@jica.go.jp
- **主な支援分野**
  - 災害リスク軽減・管理プロジェクト
  - 農業・農村開発分野での協力
  - 都市交通システム整備
  - 教育分野での人材育成
  - 保健医療システム強化
  - 水資源管理・治水対策

### QMPでの取り組み方針
- 災害多発地域としての防災マッピングを重視します
- ベンガル語での情報発信と技術資料整備を進めます
- 現地大学・研究機関との密接な連携を図ります
- 農村部でのキャパシティビルディングを促進します
- 持続可能な地図更新体制の構築を目指します

### 言語対応
- `name`: ベンガル語での正式名称
- `name:bn`: ベンガル語名（公用語）
- `name:en`: 英語名
- `name:ja`: 日本語名（JICAプロジェクト関連の場合）

### マッピング時の注意点
- モンスーン季には洪水エリアが動的に変化するため、季節による地形変化に注意が必要です
- デルタ地帯には複雑な水路システムがあり、正確な記録が求められます
- 人口密度の高い都市部のスラム地域では、現地の状況を尊重したマッピングが重要です
- 農村部では季節によって道路の状況が変化することがあります
- イスラム教施設の記録にあたっては、現地の文化や慣習に配慮します
- ロヒンギャ難民キャンプのある地域については、特に配慮が必要です
- ⚠️ ベンガル語の正確な表記を確認するよう心がけます
- ⚠️ 政治的に敏感な国境地域のマッピングは慎重に行います

### タグ付け例
```
amenity=hospital
name=ঢাকা মেডিকেল কলেজ হাসপাতাল
name:bn=ঢাকা মেডিকেল কলেজ হাসপাতাল
name:en=Dhaka Medical College Hospital
name:ja=ダッカ医科大学病院
operator=Government of Bangladesh
emergency=yes
flood_prone=yes
```

```
amenity=school
name=ঢাকা প্রাথমিক বিদ্যালয়
name:bn=ঢাকা প্রাথমিক বিদ্যালয়
name:en=Dhaka Primary School
operator=শিক্ষা মন্ত্রণালয়
education:type=primary
addr:city=ঢাকা
```

JICAが支援する特定施設の場合：
```
amenity=hospital
name=বাংলাদেশ ইনস্টিটিউট অব হেলথ সায়েন্সেস
name:bn=বাংলাদেশ ইনস্টিটিউট অব হেলথ সায়েন্সেস
name:en=Bangladesh Institute of Health Sciences
funded_by=JICA
operator=Ministry of Health
project=Health System Strengthening
```

### 関連リソース
- OpenStreetMap Bangladesh community
- バングラデシュ測量局（Survey of Bangladesh）
- ダッカ大学GIS・RS研究センター
- UNDP Bangladesh
- 現地NGO災害対応ネットワーク

### 統計データ
- 推定マッパー数: 150-200人
- 主要都市カバレッジ: 70%
- 地方部カバレッジ: 35%
- 最終更新日: 2025-06-01

### 技術的情報
- 推奨編集ツール: iD（ベンガル語対応）、JOSM
- ローカルタイル源: Bing imagery、Mapbox Satellite
- インポート済みデータ: 主要道路、行政境界、河川データ
- 品質保証ツール: Osmose、Bangladesh OSM validation tools

---

**courage to map** - ちょっとした勇気で地図を作る 🗺️

*作成日: 2025年06月02日*
