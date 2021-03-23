# Rails Junior API
![](https://img.shields.io/badge/ruby-v.2.6.6-red)  ![](https://img.shields.io/badge/rails-v.6.1.3-red) ![](https://img.shields.io/badge/-sidekiq-v.6.0.2-ffea00) ![](https://img.shields.io/badge/-docker-ff69b4) ![](https://img.shields.io/badge/-postgresql-00c3d9) ![](https://img.shields.io/badge/-redis-00c3d9)




Перед запуском нужно иметь:
 - Ruby v.2.6.6
 - Foreman
 - Docker, docker-compose 
 - PostgreSQL

Установка и запуск:
1)bundle install
2)gem install foreman
3)docker-compose up
4)rails db:migrate
5)rails db:seed
6)foreman start




Использование:
localhost:5000/api/v1/diaries
localhost:5000/api/v1/notes

localhost:5000/api/v1/diary/1
localhost:5000/api/v1/note/1




---- заранее остановить редис и постгрес, если работает

 
 
 
