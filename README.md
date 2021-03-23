# Rails Junior API
![](https://img.shields.io/badge/ruby-v.2.6.6-e00a2c)  ![](https://img.shields.io/badge/rails-v.6.1.3-c10015) ![](https://img.shields.io/badge/sidekiq-v.6.0.2-a80042) ![](https://img.shields.io/badge/-redis-cf272a) ![](https://img.shields.io/badge/-docker-4c92ed) ![](https://img.shields.io/badge/-postgresql-3f6590)


## Перед запуском нужно иметь:
 - Ruby v.2.6.6
 - Foreman
 - Docker, docker-compose 
 - PostgreSQL

## Установка и запуск:
 1. bundle install
 2. gem install foreman
 3. docker-compose up
 4. rails db:migrate
 5. rails db:seed
 6. foreman start


## Использование:
**Для дневников**

`localhost:5000/api/v1/diaries`

`localhost:5000/api/v1/diary/1`

**Для записей**

`localhost:5000/api/v1/notes`

`localhost:5000/api/v1/note/1`

