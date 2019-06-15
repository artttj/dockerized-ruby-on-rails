# README

## Getting started

Build images:

```docker-compose build```

Create database:

```docker-compose run web rake db:create```

Run application:

```docker-compose up -d```

Open **localhost:3000** in your browser.

## Migrations

Example migration, create users table:

```docker-compose run web bin/rails generate migration CreateUsers```

```docker-compose run web rake db:migrate```
