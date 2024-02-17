# データベース入門

## データベースとは

データベースは、データを取り出したり更新したり、集計したりするための、データを効率的に管理する貯蔵庫です。

### データベースの用途

データベースは、以下のような用途で使用されます。

1. **情報の保存**: データベースは、情報を安全かつ効率的に保存するためのツールです。例えば、顧客情報、商品情報、取引情報などを保存します。
2. **情報の検索**: データベースは、大量の情報から特定の情報を素早く検索することができます。
3. **情報の分析**: データベースは、情報を分析し、ビジネスの意思決定に役立てることができます。

### データベースの種類

1. リレーショナルデータベース（RDBMS）：テーブルと関係を持つデータベース。代表的なものにMySQLやPostgreSQLがあります。
2. NoSQLデータベース：関係データベースではなく、柔軟なデータ構造を持つデータベース。代表的なものにMongoDBやRedisがあります。※Not Only SQLの略

## テーブルとカラム

### テーブルとは

- テーブルは、データベース内でデータを格納するための構造です。
- テーブルは複数の行（レコード）と列（フィールドまたはカラム）で構成されています。

### カラムとは

- カラムは、テーブル内の1つのフィールドを表します。
- カラムはデータの型（整数、文字列、日付など）と制約（NULL許容、一意制約、外部キー制約など）を持つことがあります。
- 例えば、ユーザーの情報を格納するテーブルには、名前、メールアドレス、年齢などのカラムが含まれます。


## SQL基礎

### SQLとは

- SQL（Structured Query Language）は、リレーショナルデータベースで使用される標準的なクエリ言語です。
- テーブルの作成、データの抽出、変更、削除といったデータベースの操作を行うために使用されます。

### SQL文の基本構造

```sql
CREATE TABLE テーブル名 (列名 データ型 オプション, ...);
SELECT 列名 FROM テーブル名 WHERE 条件;
INSERT INTO テーブル名 (列名1, 列名2, ...) VALUES (値1, 値2, ...);
UPDATE テーブル名 SET 列名 = 値 WHERE 条件;
DELETE FROM テーブル名 WHERE 条件;
```

### SQL文の具体例

1. テーブルの作成

```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(32),
    email VARCHAR(255) UNIQUE,
    age INT,
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp
);
```

このSQL文は、名前が「users」というテーブルを作成し、その中にid、name、email、ageの4つのカラムを定義しています。

#### カラムの型と制約

- カラムの型には、整数型（INT）、文字列型（VARCHAR）、日付型（DATE, DATETIME）などがあります。
- カラムには、制約（PRIMARY KEY、UNIQUE、NOT NULLなど）を設定することができます。


2. データの取得（SELECT文）

```sql
SELECT * FROM users;
SELECT id, name, email FROM users WHERE age > 18;
```

3. データの挿入（INSERT文）

```sql
INSERT INTO users (name, email, age) VALUES ('John Doe', 'john@example.com', 25);
```

4. データの更新（UPDATE文）

```sql
UPDATE users SET age = 30 WHERE name = 'John Doe';
```

5. データの削除（DELETE文）

```sql
DELETE FROM users WHERE id = 1;
```

