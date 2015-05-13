# pgcfbackup

A small dockerized script to dump all databases from postgres and then upload to cloudfiles


## Configuration

You need to set the following environment variables:

  * PGHOST
  * PGUSER
  * PGPASSWORD
  * CLOUDFILES_USERNAME
  * CLOUDFILES_APIKEY
  * CLOUDFILES_CONTAINER

You can also set [other postgres environment variables](http://www.postgresql.org/docs/9.1/static/libpq-envars.html)


```
docker run --rm -e CLOUDFILES_CONTAINER=pgbackup -e CLOUDFILES_REGION=DFW -e CLOUDFILES_USERNAME=yourusername -e CLOUDFILES_APIKEY=12345deadbeef12345  -e PGHOST=postgres -e PGPASSWORD=whatever --link postgres:postgres realgeeks/pgbackup
```




