# DB設計

## Users Table
| Column             | Type     | Opsion         |
|--------------------|----------|----------------|
| name               | string   | nul: false     |
| email              | string   | nul: false     |
| encrypted_password | string   | nul: false     |

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## Rooms Table
| Column   | Type    | Opsion          |
|----------|---------|-----------------|
| name     | string  | nul: false      |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## Room_users Table
| Column   | Type      | Oprion                        |
|----------|-----------|-------------------------------|
| user     | reference | null: false, foregn_key: true |
| room     | reference | null: false, foregn_key: true |

### Associasion

- belongs_to :room
- belongs_to :user

## Messages Table
| Column   | Type       | Opsion                         |
|----------|------------|--------------------------------|
| content  | string     |                                |
| rooms    | references | null: false, foreign_key: true |
| users    | references | null: false, foreign_key: true |

### Associasion

- belongs_to :room
- belongs_to :user