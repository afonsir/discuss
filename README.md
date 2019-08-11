# Discuss

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

To start your Phoenix app with Docker:
  * Building from dockerfle and running in detached mode `docker-compose up -d --build`

To clean non-used docker images:
  * Removing all dangling images `docker image remove --force $(docker images --filter "dangling=true" --quiet)`
