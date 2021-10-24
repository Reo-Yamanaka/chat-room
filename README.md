# DB設計

## Users Table
| Column   | Type     | Opsion         |
|----------|----------|----------------|
| name     | string   | nul: false     |
| email    | string   | nul: false     |
| password | string   | nul: false     |

### Association

## Rooms Table
| Column   | Type    | Opsion          |
|----------|---------|-----------------|
| name     | string  | nul: false      |

### Association

## Messages Table
| Column   | Type    | Opsion          |
|----------|---------|-----------------|
| text     | text    | nul: false      |
| photo    | text    | nul: false      |
| time     | 
| rooms_id | integer | 
| users_id | integer |