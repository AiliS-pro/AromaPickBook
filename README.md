# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## adminsテーブル
|Column|Type|Option|
|------|----|------|
|admin_name|string|null :false|
|password|string|null :false|

### Association
- has_many :aromas


## aromasテーブル

|Column|Type|Option|
|------|----|------|
|admin_id|integer|foreign_key :true, null :false|
|name|string|null :false|
|family_name|string|null :false|
|fragrance_note|string|null :false|
|fragrance_type|string|null :false|
|explain_text|text|null :false|
|img|longblob|null :false|

### Association
- belongs_to :admin