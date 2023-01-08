# Docker quick start for Rails

Scripts based on the guide found [here](https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails/)

## Initial setup
- Clone the repository (change the name of the application ^^)

```bash
git clone git@github.com:eddbot/docker-rails-quickstart.git name_of_new_rails_app

```

## Housekeeping
- Update `entrypoint.sh` to make reference to the name of the directory
- Update `Dockerfile` to make reference to the name of the directory
- Update `docker_db.yml` to make reference to the name of the directory

## Docker thangs
- Run `make initial`
- Run `make admin` if on linux/WSL2

## Setup the DB
- Copy over our docker settings
```bash
mv docker_db.yml config/database.yml
```
- Run `make setup` to create and seed the databases

## Starting the application
- make up

## Stopping the application
- make down
