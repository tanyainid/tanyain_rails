# Heroku command

## set env on production

figaro heroku:set -e production --app=tanyain-rails

## heroku push

dpl --provider=heroku --app=tanyain-rails --api-key=c06af369-4726-445c-bb3f-4d8bab3cd1d9

## heroku clean

heroku restart && heroku pg:reset DATABASE --confirm tanyain-rails && heroku run rake db:migrate

## seed on heroku

heroku restart --app=tanyain-rails && heroku pg:reset DATABASE --confirm tanyain-rails --app=tanyain-rails && heroku run rake db:migrate db:seed --app=tanyain-rails 

## migrate and seed on heroku

heroku run rake db:migrate db:seed --app=tanyain-rails 

heroku run console --app=tanyain-rails 
heroku run bash --app=tanyain-rails 

## rebuild database locally

rake db:drop db:create db:migrate
rake db:drop db:create db:migrate db:seed
rake db:seed

## logs

heroku logs --tail --app tanyain-rails
