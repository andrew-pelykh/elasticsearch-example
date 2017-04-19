# Elasticsearch example

Sample app with Elasticsearch



### Getting Started

1. Make sure [Elasticsearch][1] is installed on your PC.
 You will need to turn it on at first.

2. Next one install gems and create db:
```bash
bundle install
rake db:create
rake db:migrate
```
I'm using postgresql here, make sure your pc is configurated to work with postgres or change database.yml as you want.

3. Migrate your db with example data:
```bash
rake db:seed
```
4. Finnally, run puma server:
```bash
rails s
```

[1]: https://www.elastic.co/guide/en/elasticsearch/guide/current/running-elasticsearch.html
