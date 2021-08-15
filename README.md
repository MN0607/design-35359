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
- has_one :room

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

- has_one :room

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

### Association

- belongs_to :room