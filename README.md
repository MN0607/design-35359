# アプリケーション名

design-35359


# アプリケーション概要

個人デザイナーと企業を繋ぐ、チャットアプリを作成しました。

## 個人デザイナー

1. userとして登録可能です。
1. デザインの投稿/編集/削除/マイページ表示、チャット機能、検索機能が使用可能です。

## 企業

1. トップページ左上 Co.pageより、企業トップページへ移行し、companyとして登録可能です。
1. チャット機能、検索機能が使用可能です。


# 接続先情報

## Heroku URL

https://design-35359.herokuapp.com/

## ID/Pass

- ID: admin
- Pass: 2222

## テスト用アカウント等

- 個人デザイナー用
  - メールアドレス: user@com
  - パスワード: user123
- 企業用
  - メールアドレス: company@com
  - パスワード: company123

## Githubリポジトリ URL

https://github.com/MN0607/design-35359


# 利用方法

## 個人デザイナー用

### ユーザー登録

- トップページバナー
  - sign in：ユーザー登録が可能
  - log in：ログインが可能
  - sign out：サインアウトが可能
  - Co.page：companyトップページへ遷移可能
  - user,company同時ログインは不可

### 投稿機能

1. userとしてログイン
1. トップページバナー「POST」クリック
1. 右記、4項目記入後、「Post」クリックにて投稿可能。image,category,title,explanation

### 詳細表示機能

1. userとしてログイン
1. マイページ/検索結果にて表示される画像をクリック
1. 投稿者のみ、下記2種のボタン表示
  - 「Edit」ボタン：編集機能へリンク
  - 「Delete」：削除機能へリンク

### 編集機能

1. userとしてログイン
1. 詳細表示後、右下の「Edit」ボタンクリック
1. 右記、任意の4項目記入後、「Post」にて編集可能。image,category,title,explanation

### 削除機能

1. userとしてログイン
1. 詳細表示後、右下の「Delete」ボタンクリックし、削除可能。

### マイページ表示機能

1. userとしてログイン
1. トップページバナー「ユーザー名」クリック
1. カテゴリー別に表示される。(投稿物がなければ表示なし)
1. 画像クリックにより、詳細表示可能。

### チャット機能

1. userとしてログイン
1. トップページバナー「CHAT」ボタンクリック
1. 左上の「Create a room」よりチャットルーム作成
  1. 右記2項目入力により、チャットルーム作成可能。Room name、Chat member
1. 左のRoom nameクリックにより、メッセージ表示
  1. 下部入力欄より、メッセージ、画像の送信可能
1. 右上の「Finish this chat」クリックによりチャットルーム削除可能

### 検索機能

1. userとしてログイン
1. トップページバナー「SEARCH」ボタンクリック
1. カテゴリー選択。(未選択の場合、全表示可能)
1. 表示された画像クリックにより、詳細表示

## 企業用

### ユーザー登録

- トップページバナー
  - sign in：ユーザー登録が可能
  - log in：ログインが可能
  - sign out：サインアウトが可能
  - Indiv.page：companyトップページへ遷移可能
  - user,company同時ログインは不可

### チャット機能

1. companyとしてログイン
1. トップページバナー「CHAT」ボタンクリック
1. 左上の「Create a room」よりチャットルーム作成
  1. 右記2項目入力により、チャットルーム作成可能。Room name、Chat member
1. 左のRoom nameクリックにより、メッセージ表示
  1. 下部入力欄より、メッセージ、画像の送信可能
1. 右上の「Finish this chat」クリックによりチャットルーム削除可能

### 検索機能

1. companyとしてログイン
1. トップページバナー「SEARCH」ボタンクリック
1. カテゴリー選択。(未選択の場合、全表示可能)
1. 表示された画像クリックにより、詳細表示
  1. 投稿者名が確認でき、チャット機能でのChat member選択に役立ちます。


# 課題解決

## What 解決すべき課題

- 「個人デザイナーの埋没化」

## Why なぜ解決するべきか

- SNSの急激な拡大により、個人デザイナーを含む一般人の情報発信が容易になり、  
  才能のあるデザイナーが埋没化しているため。
- 情報過多な社会にて、個人のデザイナーが情報発信してもあまり注目されない。
- 実際、私もPowerPointを用いて、デザイン制作をしているが、  
  SNSを用いて情報発信しても、なかなか注目されにくいと感じた。

## Who ターゲット

- ターゲット；個人デザイナー。年齢、性別不問。
- コアターゲット：10~20代の個人デザイナー。SNSの活用が盛んな年代を想定。性別不問。

## Where 対象とする分野

- SNS分野。
- デザインに特化した情報発信/企業とのマッチングSNS

## When 納期

- 年内のサービス開始を想定。

## How 課題解決手段

- プラットフォーム
  - スマートフォンアプリが最適
  - 今回は、WEBアプリにて作成。サービス化に伴い、スマートフォンアプリへの転換も視野
- 機能要件
  - ユーザー管理機能、CRUD、チャット機能、検索機能
- 非機能要件
  - Basic認証

## How much 費用
- 50~100万円想定
  - 現状、複雑な機能の実装予定はなく、AWS等のクラウドサービスの使用料がメインとなる想定


# 要件定義

|優先順位(高:3,中:2,低:1)   |機能           |目的       |詳細                                              |ストーリー(ユースケース)	                      |見積もり（所要時間）|
|------------------------ |-----         |----      |----                                              |---------------------                       |----------------|
|3                        |DB設計         |アプリ作成の全体像把握し、必要なテーブルの作成||                                                                  |3               |
|3                        |ユーザー管理機能|ユーザー管理|user,companyを分類,Deviseにて実装                    |トップページバナー                             |10              |
||||                                                                                                   |sign in：ユーザー登録が可能||       
||||                                                                                                   |log in：ログインが可能 ||
||||                                                                                                   |sign out：サインアウトが可能||
||||                                                                                                   |Co.page：companyトップページへ||
||||                                                                                                   |Indiv.page：userトップページへ||
||||                                                                                                   |user,company同時ログインは不可 ||
|3	                      |投稿機能	      |デザイン投稿|userのみ、下記、4項目記入にて投稿可能                   |①userとしてログイン                           |20              |
|||                                                 |image,category,title,explanation                  |②トップページ バナー 「POST」クリック||
||||                                                                                                   |③下記、4項目記入後、「Post」クリックにて投稿可能||
||||                                                                                                   |image,category,title,explanation||
|3	                      |詳細表示機能	|投稿物の詳細表示|image,title,explanationを表示                      |①userとしてログイン                           |2               |
|||                                                  |編集/削除機能へのリンク表示	                          |②マイページ/検索結果にて表示されるimageをクリック||
||||                                                                                                   |③投稿者のみ、下記2種のボタン表示||
||||                                                                                                   |「Edit」ボタン：編集機能へリンク||
||||                                                                                                   |「Delete」：削除機能へリンク"	||
|3                        |編集機能	    |投稿物の編集	  |投稿者のみ、下記、4項目の編集可能                      |①userとしてログイン                            |5               |
|||                                                  |image,category,title,explanation                 |②詳細表示後、右下の「Edit」ボタンクリック||
||||                                                                                                   |③下記、4項目記入後、「Post」クリックにて編集可能||
||||                                                                                                   |image,category,title,explanation||
|3                        |削除機能	    |投稿物の削除	   |投稿者のみ、投稿物の削除が可能	                     |①userとしてログイン                             |1               |
||||                                                                                                   |②詳細表示後、右下の「Delete」ボタンクリックし、削除可能||
|3                        |	マイページ機能|ユーザーの投稿物一覧表示|現在のuserの投稿物をカテゴリー別に表示         |①userとしてログイン                             |20              |
||||                                                                                                   |②トップページバナー ユーザー名クリック||
||||                                                                                                   |③カテゴリー別に表示。投稿物がなければ表示なし||
||||                                                                                                   |④画像クリックにより、詳細表示可能||
|3                        |	チャット機能|ユーザーと企業のマッチング|user,companyが1対1でチャット可能             |①user/companyとしてログイン                     |20             |
|||                                                          |text,image共に送信可能                     |②トップページバナー「CHAT」ボタンクリック||
||||                                                                                                   |③左上の「Create a room」よりチャットルーム作成||
||||                                                                                                   |④下記、2項目入力により、チャットルーム作成||
||||                                                                                                   |Room name、Chat member||
||||                                                                                                   |⑤左のRoom nameクリックにより、メッセージ表示||
||||                                                                                                   |⑥下部入力欄より、メッセージ、画像の送信可能||
||||                                                                                                   |⑦右上の「Finish this chat」よりチャットルーム削除可能||
|3                        |	検索機能    |投稿物のカテゴリー別検索|カテゴリー別検索/表示が可能                    |①user/companyとしてログイン                      |20            |
|||                                                         |投稿者名を確認し、チャット機能のuser検索に活用可能|②トップページバナー「SEARCH」ボタンクリック|
||||                                                                                                    |③カテゴリー選択。未選択の場合、全表示||
||||                                                                                                    |④表示された画像クリックにより、詳細表示||
||||                                                                                                    |⑤投稿者名が確認でき、チャット機能でのChat member選択に活用可能||
|3                        |	Basic認証     |	アプリ使用者の限定  |アプリ使用者を限定                            |①アプリの不正利用防止のため、実装	                  |1            |


# 実装機能の主な特徴

## ユーザー登録

### 特徴
- user,company別にユーザー登録機能を実装
  - deviseを用いて、2種類のユーザー登録を可能にしました。  
    これにより、個人デザイナーと企業のチャット機能実装が可能となりました。  
    本実装については、テックキャンプのカリキュラムになく、WEB上での検索のみで行い、  
    課題解決力の向上に繋がりました。
### 工夫した点
- user,companyの同時ログインを不可にしたこと
  - 同時ログインを防止することにより、アプリ内での予期せぬエラーの防止に努めました。  
    実際、同時ログイン不可の導入前、投稿機能でのエラーが発生したことがあります。  
    ログイン、サインアップ時に、バリデーションを設けることで、同時ログインを回避しています。


## 投稿機能

### 特徴
- カテゴリー別投稿機能
  - デザインサイズに最適なカテゴリーを選択可能です。  
    また、各カテゴリー別のマイページ表示/検索機能の実装を可能としました。  
    現状、LOGO,BANNERの2種類ですが、順次追加予定です。

### 工夫した点
- プレビュー機能
  - 画像選択するとプレビューが表示され、  
    より適切なカテゴリー選択を可能とし、利便性の向上を意識しました。  
    現状、1回目の画像選択後、  
    上部バナーの左に配置されている画像が消えてしまう実装となっているため、改善に努めます。

## マイページ表示機能

### 特徴
- カテゴリー別の表示
  - 投稿時に登録されたカテゴリー情報を用いて、投稿物の分類を行いました。  
    これによって、マイページの統一感、投稿物の明確な分類を実現でき、  
    ユーザーの使いやすさの向上を目指しました。

### 工夫した点
- Explanationの枠サイズ
  - Explanationの枠サイズと投稿時のExplanationの枠サイズを同等にしました。  
    投稿時と同じ見た目でマイページに表示することができ、  
    投稿時と表示時のExplanationの見た目が異なることによる、  
    修正回数を減らすことができると考えています。

## チャット機能

### 特徴
- 個人デザイナーと企業を繋ぐコンテンツ
  - 

### 工夫した点

## 検索機能

### 特徴

### 工夫した点






# テーブル設計

## users テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false |
| encrypted_password  | string | null: false |
| first_name          | string | null: false |
| last_name           | string | null: false |

### Association

- has_many :designs
- has_many :rooms

## designs テーブル

| Column     | Type             | Options                        |
| -----------| ---------------  | ------------------------------ |
| image      | (active storage) | null: false                    |
| title      | string           | null: false                    |
| explanation| text             | null: false                    |
| category_id| integer          | null: false                    |
| user       | references       | null: false, foreign_key: true |

### Association

- belongs_to :user

## companies テーブル

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| company_name        | string  | null: false |
| email               | string  | null: false |
| encrypted_password  | string  | null: false |
| postal_code         | string  | null: false |
| prefecture_id       | integer | null: false |
| municipality        | string  | null: false |
| house_number        | string  | null: false |
| building_name       | string  |             |
| phone_number        | string  | null: false |

### Association

- has_many :rooms

## rooms テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| room_name | string     | null: false                    |
| user      | references | null: false, foreign_key: true |
| company   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :company
- has_many :messages

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| room    | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |
| company | references | null: false, foreign_key: true |

### Association

- belongs_to :room