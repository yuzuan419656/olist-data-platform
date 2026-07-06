# Olist Data Platform (AWS移行プロジェクト)

本プロジェクトは、ブラジルECサイト「Olist」の注文・レビュー等のデータを GCP 環境から AWS 環境へ移行するためのモダンデータスタック（MDS）実装です。dbt によるデータ変換パイプラインと Amazon Athena によるサーバーレスクエリ環境を構築し、スケーラブルかつ品質の高いデータ分析基盤を実現しています。

---

## システムアーキテクチャ

データ基盤はモダンなメダリオン・アーキテクチャを採用しています。

- **データレイク:** Amazon S3（RAWデータ蓄積）
- **データカタログ:** AWS Glue（クローラーによるメタデータ管理）
- **クエリエンジン:** Amazon Athena
- **データ変換:** dbt（Data Build Tool）
- **CI/CD:** GitHub Actions（自動テストおよびデプロイパイプライン）

---

## ディレクトリ構成

```text
.
├── models/             # データ変換ロジック (Staging, Marts層)
├── tests/              # 独自データ品質テスト
├── dbt_project.yml     # プロジェクト設定
└── README.md
```

---

## 主な特徴

- **データパイプラインの自動化:** S3上のRAWデータから分析用データマートまで、再現性の高い変換ロジックを実装。
- **データ品質管理:** `dbt test`（`unique`、`not_null`等）を統合し、データの信頼性を担保。
- **CI/CD連携:** GitHub Actions を活用し、プルリクエスト毎に自動テストを実行してデプロイ前に不具合を検知。
- **ドキュメント生成:** `dbt docs` により、データの生成過程（リネージ）を自動可視化。

---

## セットアップ手順

### 前提条件

- `dbt-athena-community` アダプターがインストールされていること。
- Athena および S3 にアクセス可能な AWS 認証情報が設定されていること。

### 開発用コマンド

```bash
# データ変換パイプラインの実行
dbt run

# データ品質テストの実行
dbt test

# ドキュメントの生成
dbt docs generate
```

---

## 参照リソース

- dbt documentation
- AWS Glue Documentation
- Amazon Athena Documentation

---

## 更新の手順

CloudShell 上で以下を実行し、README を編集します。

```bash
vi README.md
```

上記の内容を貼り付けて保存してください。

その後、以下のコマンドで Git に反映します。

```bash
git add README.md
git commit -m "Update README to Japanese"
git push origin main
```
