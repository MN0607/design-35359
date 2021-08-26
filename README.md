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

# こだわりポイント

1. 「サービス」としてのWEBアプリ作成  
- 単なるポートフォリオではなく、世の中に役立つ「サービス」として作成いたしました。  
  理由は下記2点です。  
  - 世の中の悩みを解決し、笑顔にできるWEBアプリ作成に挑戦したいと考えたためです。
  - 「サービス」と捉えることにより、ユーザーの立場からの実装が必要となり、  
    具体的な要件定義に役立つと考えたためです。

2. ユーザーの立場から考えたビューの実装
- 本アプリで最も重視したことは、徹底したユーザーの立場からのビューの実装です。  
  - 全体色をグレー/紺色で統一することによって、  
    アプリ全体を落ち着いた雰囲気にし、デザインをより綺麗に際立ちます。  
    よって、デザインがより強調され、見やすいビューを作成しました。
  - 下記「実装機能の主な特徴」にて、明記していますが、  
    各機能の表示方法や、使いやすさを意識して、ビューを実装しました。

3. 自作デザインの使用
  - 本アプリに使用している、「DESIGN YOUR LIFE」の画像は、PowerPointを用いて作成しました。  
    アイコニックな米のロゴを用いることにより、  
    米⇨本アプリと連想され、本アプリの認知度向上を目指しました。


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

# 開発状況

## 開発環境
- Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello
  - Rails 6.0.4

## 開発期間と平均作業時間
- 開発期間：7/26~8/25 (31日間)
- 1日あたりの平均作業時間：約5時間
- 合計：約155時間程度

# 動作確認方法
- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。  
  ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- 確認後、ログアウト処理をお願いします。


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
1. 下記、4項目記入後、「Post」クリックにて投稿可能。  
  image,category,title,explanation

### 詳細表示機能

1. userとしてログイン
1. マイページ/検索結果にて表示される画像をクリック
1. 投稿者のみ、下記2種のボタン表示
  - 「Edit」ボタン：編集機能へリンク
  - 「Delete」：削除機能へリンク

### 編集機能

1. userとしてログイン
1. 詳細表示後、右下の「Edit」ボタンクリック
1. 下記、任意の4項目記入後、「Post」にて編集可能。  
  image,category,title,explanation

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
  1. 下記、2項目入力により、チャットルーム作成可能。  
  Room name、Chat member
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
  1. 下記、2項目入力により、チャットルーム作成可能。  
    Room name、Chat member
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

- SNSの急激な拡大により、個人デザイナーを含む一般人の情報発信が容易になり、情報過多な社会となっています。  
  これにより、個人のデザイナーが情報発信してもあまり注目されず、才能のあるデザイナーが埋没化していると考えたためです。
- 実際、私もPowerPointを用いてデザイン制作をしているが、  
  SNSを用いて情報発信しても、なかなか注目されにくいと感じました。

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
  - 世の中に普及しやすい、スマートフォンアプリが最適
  - 今回は、ｘWEBアプリにて作成。サービス化に伴い、スマートフォンアプリへの転換も視野
- 機能要件
  - ユーザー管理機能、CRUD、チャット機能、検索機能
- 非機能要件
  - Basic認証

## How much 費用と収益化
- 50~100万円想定
  - 現状、複雑な機能の実装予定はなく、AWS等のクラウドサービスの使用料がメインとなる想定
- 収益構造の想定
  - 案件に結びついた時点で、企業側から収益を得る。  
    理由は下記2点  
    - 目的と収益ポイントの合致するため。  
      本アプリの目的：個人デザイナーと企業を繋ぎ、世の中を笑顔にすること。  
      収益ポイント：案件が結びついた時点。=本アプリの目的に合致。 
      収益アップのための企業努力が、目的達成に直結し、  
      社会、ユーザー、企業全てが利益を得ることができます。
    - 基本的無料で使用でき、世の中に普及しやすいため。  
      サブスクリプション等、使用開始時点でコスト発生する場合、  
      門戸が狭まり、既存のSNSアプリレベルの拡大に至らないと考えました。


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
|3                        |	チャット機能|個人デザイナーと企業のマッチング|user,companyが1対1でチャット可能             |①user/companyとしてログイン                     |20             |
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
  - こちらのURL(https://design-35359.herokuapp.com/users/sign_in)にアクセスするとご覧いただけます。
  [![Image from Gyazo](https://i.gyazo.com/0b7340ff02b0a17d89d4e2a41f230210.png)](https://gyazo.com/0b7340ff02b0a17d89d4e2a41f230210)
  - こちらのURL(https://design-35359.herokuapp.com/companies/sign_in)にアクセスするとご覧いただけます。
  [![Image from Gyazo](https://i.gyazo.com/06105862dbaf7659b5e049f2a3ffe8d6.png)](https://gyazo.com/06105862dbaf7659b5e049f2a3ffe8d6)
  - deviseを用いて、2種類のユーザー登録を可能にしました。  
    これにより、個人デザイナーと企業のチャット機能実装ができるようになりました。  
    本実装については、テックキャンプのカリキュラムになく、  
    独自にWEB上での検索/内容理解した上で実装を行ったことにより、課題解決力の向上に繋がりました。

### 工夫した点
- user,companyの同時ログインを不可にしたこと
  - userとしてログイン状態で、companyへログインする場合
  [![Image from Gyazo](https://i.gyazo.com/340a5a3de72056f058d694eed208a386.gif)](https://gyazo.com/340a5a3de72056f058d694eed208a386))
  - companyとしてログイン状態で、userへログインする場合
  [![Image from Gyazo](https://i.gyazo.com/37bad47d37bcf8381360104b85204f73.gif)](https://gyazo.com/37bad47d37bcf8381360104b85204f73))
  - 同時ログインを防止することにより、アプリ内での予期せぬエラーの防止に努めました。  
    実際、同時ログイン不可の導入前、投稿機能でのエラーが発生したことがあります。  
    ログイン、サインアップ時に、バリデーションを設けることで、同時ログインを回避しています。


## 投稿機能

### 特徴
- カテゴリー別投稿機能
  - userログイン後、こちらのURL(https://design-35359.herokuapp.com/designs/new)にアクセスするとご覧いただけます。
    [![Image from Gyazo](https://i.gyazo.com/61c72d29f8878d57a6c8a6612bcdf6b3.png)](https://gyazo.com/61c72d29f8878d57a6c8a6612bcdf6b3)
  - デザインサイズに最適なカテゴリーを選択可能です。  
    これによって、各カテゴリー別のマイページ表示/検索機能の実装を可能としました。  
    現状、LOGO,BANNERの2種類ですが、順次追加予定です。

### 工夫した点
- プレビュー機能
    [![Image from Gyazo](https://i.gyazo.com/fe312425e6a9397f175c7399fb1e660f.gif)](https://gyazo.com/fe312425e6a9397f175c7399fb1e660f)
  - 画像選択するとプレビューが表示され、  
    より適切なカテゴリー選択を可能とし、利便性の向上を意識しました。  
    現状、1回目の画像選択後、  
    上部バナーの左に配置されている画像が消えてしまう実装となっているため、改善に努めます。

## マイページ表示機能

### 特徴
- カテゴリー別の表示
  - userログイン後、こちらのURL(https://design-35359.herokuapp.com/designs/mypage)にアクセスするとご覧いただけます。
  [![Image from Gyazo](https://i.gyazo.com/b3c40f57085272f6bcda24b573851531.png)](https://gyazo.com/b3c40f57085272f6bcda24b573851531)
  - 投稿時に登録されたカテゴリー情報を用いて、投稿物の分類を行いました。  
    これによって、カテゴリー別に分類されたビューを実現し、  
    ユーザーの使いやすさの向上を目指しました。

### 工夫した点
- title/Explanationの枠サイズ
  - (投稿機能のビュー)上記のマイページ表示と比較いただけますと幸いです。
  [![Image from Gyazo](https://i.gyazo.com/61c72d29f8878d57a6c8a6612bcdf6b3.png)](https://gyazo.com/61c72d29f8878d57a6c8a6612bcdf6b3)
  - title/Explanationの枠サイズと投稿時のtitle/Explanationの枠サイズを同等にしました。  
    投稿時と同じ見た目でマイページに表示することができることにより、
    投稿時と表示時のtitle/Explanationの見た目の相違による修正を防止できると考えています。

## チャット機能

### 特徴
- 個人デザイナーと企業を繋ぐコンテンツ
  - ログイン後、こちらのURL(https://design-35359.herokuapp.com/rooms)にアクセスするとご覧いただけます。
  [![Image from Gyazo](https://i.gyazo.com/a412b8d6a91eadef98acab9e390020ee.gif)](https://gyazo.com/a412b8d6a91eadef98acab9e390020ee)
  - 本アプリの根幹となる機能です。  
    個人デザイナーと企業が1対1でやり取りでき、具体的な案件の相談やアポイントに繋がり、  
    より多くの個人デザイナーが世の中を笑顔にすることに貢献できると考えています。

### 工夫した点
- 容易なチャットルームの切り替え  
  [![Image from Gyazo](https://i.gyazo.com/df0b78ca8ab9bef9e5116e0e46bdf0d9.gif)](https://gyazo.com/df0b78ca8ab9bef9e5116e0e46bdf0d9)
  - 左サイドバーに、現在使用中のチャットルームの一覧を表示しました。  
    ワンクリックでチャットルームを変更でき、使いやすいシンプルな設計を目指しました。


## 検索機能

### 特徴
- カテゴリー別検索機能
  - ログイン後、こちらのURL(https://design-35359.herokuapp.com/designs/search_index)にアクセスするとご覧いただけます。
  [![Image from Gyazo](https://i.gyazo.com/7d2912ef857ec0855eee9a61c39e74f3.gif)](https://gyazo.com/7d2912ef857ec0855eee9a61c39e74f3)
  - 投稿時のカテゴリー情報を用いて、検索機能を実装しました。  
    興味を持ったデザインの投稿者を一目で確認でき、  
    チャットルーム作成時のRoom member選択時に役立つと考えています。

### 工夫した点
- カテゴリー未選択時、全表示可能  
  [![Image from Gyazo](https://i.gyazo.com/812355a3ef885bb697c5e5eb5645f873.gif)](https://gyazo.com/812355a3ef885bb697c5e5eb5645f873)
  - カテゴリー未選択の場合、検索結果を表示不可にするのではなく、  
    全ての投稿物を一覧表示できるようにしました。  
    その際、縦軸にカテゴリー別表示することで、見やすさの向上を意識しました。  





# テーブル設計

## ER図
[![Image from Gyazo](https://i.gyazo.com/b593e574c4035cd0bb5f7a80a57654d4.png)](https://gyazo.com/b593e574c4035cd0bb5f7a80a57654d4)

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


# ローカルでの動作方法
1. git clone https://github.com/MN0607/design-35359.git
1. cd design-35359
1. bundle install
1. yarn install
1. rails db:create
1. rails db:migrate
以上となります。