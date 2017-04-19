# Elasticsearch example

Sample app with Elasticsearch



How to run it

 Make sure [Elasticsearch][1] is installed on your PC.
 You will need to turn it on at first.

 Next one install gems and create db:
```bash
bundle install
rake db:create
rake db:migrate
```
Migrate your db with example data from Wikipedia:

```bash
rake db:seed
```
Finnally, run puma server:

```bash
rails s
```

[1]: https://www.elastic.co/guide/en/elasticsearch/guide/current/running-elasticsearch.html
