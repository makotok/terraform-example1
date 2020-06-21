# Terraform 学習

実践Terraformの1〜4章の学習

## セットアップ

```zsh
brew install tfenv
tfenv --version
tfenv list-remote
tfenv install 0.12.26
tfenv use 0.12.26
terraform -v
```

## 基本コマンド

```zsh
# 初期化
terraform init

# モジュール取得
terraform get

# 計画の確認
terraform plan

# リソース作成
terraform apply

# リソース破棄
terraform destroy
```

