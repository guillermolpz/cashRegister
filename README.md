# POS WITH SHOPIFY
Point of Sale using the Shopify API

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Before executing the project, you must install the following:

```
1.Install ruby version 2.5.0
2.Install rails  version 5.2.0
3.git clone git@github.com:Josue123/cashRegister.git
4.Execute the command in the cashRegister project  --> bundle install <--

```
### System dependencies

Dependencies used in the project

* **shopify_app** - *Shopify API* - [https://github.com/Shopify/shopify_app](https://github.com/Shopify/shopify_app)
* **devise** - *Autenticación de usuarios* - [https://github.com/plataformatec/devise](https://github.com/plataformatec/devise)
* **cancancan** - *Autorización de usuarios* - [https://github.com/CanCanCommunity/cancancan](https://github.com/CanCanCommunity/cancancan)
* **bootstrap-sass** - *bootstrap-sass* - [https://github.com/twbs/bootstrap-sass](https://github.com/twbs/bootstrap-sass)
* **dragonfly** - *dragonfly* - [https://github.com/markevans/dragonfly](https://github.com/markevans/dragonfly)

### Configuration
* create a file called environment_variables.yml in the following config directory to place all the api keys, as shown below:

```
# SMTP gmail
  GMAIL_USERNAME: '***'
  GMAIL_PASSWORD: '***'
# Photo profile user
  DRAGONFLY_SECRET: '***'
# Users with devise
  DEVISE_SECRET_KEY: ''
# Credentials app shopify
  SHOPIFY_API_KEY: '***'
  SHOPIFY_SECRET: '***'
# Database
  DATABASE_NAME: '***'
  DATABASE_USERNAME: '***'
  DATABASE_PASSWORD: '***'
  DATABASE_HOST: '***'
```

### Database creation
in the database.yml file is the configuration of the database, in which are the three development environments

```
  development:
  test:
  production:
```

### Database initialization
Execute the following commands to initialize the database
1. create the data base
```
rake db:create
```
2. migrate de database
```
rake db:migrate
```
3. upload data to the database
```
rake db:seed
```
4. empty database
```
rake db:reset
```

### How to run the test suite

### Services (job queues, cache servers, search engines, etc.)

### Deployment instructions

## Authors

* **Josué Flores Osorio** - *Skills-depot* - [josueflores.05@gmail.com](josueflores.05@gmail.com)
* **Guillermo Alberto Luna López** - *Skills-depot* - [g.albertolpz@gmail.com](g.albertolpz@gmail.com)
* **Elizabeth López Pérez** - *Skills-depot* - [sfsolee2@gmail.com](sfsolee2@gmail.com)
* **Javier Pineda Rodriguez** - *Skills-depot* - [javier.pineda.rodriguez@gmail.com](javier.pineda.rodriguez@gmail.com)
