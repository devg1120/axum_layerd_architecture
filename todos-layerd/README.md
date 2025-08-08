# todos

Rust・Axumで作成した、docker上で動作する、Todoを保存するためのWebAPIのサンプルです


Cargo.toml
```
[workspace]

members = [
    "todos-*"
]
resolver = "2"
```


> % cargo init todos-controller --lib
> % cargo init todos-app --lib
> % cargo init todos-domain --lib
> % cargo init todos-adapter --lib




- controller（プレゼンテーション層）

  APIのエントリーポイント
  サーバーの起動やルーターの設定

  処理の流れ
       リクエスト → controller → app → ... → cotroller → レスポンス


- app（アプリケーション層）

- domain（ドメイン層）

- adapter（インフラストラクチャー層）



