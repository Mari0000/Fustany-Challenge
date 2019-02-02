# Fustany-Challenge

[fustany-challenge.herokuapp.com](https://fustany-challenge.herokuapp.com)

## Install

### Clone the repository

```shell
git clone https://github.com/Mari0000/Fustany-Challenge.git
Fustany-Challenge
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.3.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.3.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
rails s
```

## Run testing with Rspec 
```shell 
rspec 
```

## Run APIs 
```shell
/categories.json GET
/categories/:id.json GET
/categories/:id/products.json GET
/categories/:id/products/:id.json GET

/categories.json POST { "category": { name: 'cat1' } }
/categories/:id/products.json POST { "product": { name: 'product1', price: 100.0, quantity: 2, discount: 20.0 } }

/categories/:id.json PUT { "category": { name: 'cat1' } }
/categories/:id/products/:id.json PUT { "product": { name: 'product1', price: 100.0, quantity: 2, discount: 20.0 } }

/categories/:id.json DELETE 
/categories/:id/products/:id.json DELETE 

/categories/:id/products/:id/add_to_favourite.json PUT
/categories/:id/products/:id/remove_to_favourite.json PUT

/favourits.json GET
```
