# README

## Rails info

Rails version: 5.2.3

Ruby version: 2.5.5 (x86_64-linux)

## Getting started

Install Docker:
https://docs.docker.com/compose/install/

Build images:

```docker-compose build```

Create database:

```docker-compose run web rake db:create```

Run application:

```docker-compose up -d```

Open **http://localhost:3000** in your browser.

## Migrations

Example migration, create users table:

```docker-compose run web bin/rails generate migration CreateUsers```

```docker-compose run web rake db:migrate```

## pgAdmin

Open **http://localhost:5050**


```pgadmin4@pgadmin.org```

```admin```

---

*Quick Links -> Add New Server*

```host: db```

```port: 5432```

```database: app_development```

```username: postgres```

```password:```
