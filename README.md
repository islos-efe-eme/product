# Product documentation

> Los Santos

Ensure you have the following prerequisites installed:

- [Node Erbium](https://nodejs.org/en/) (v12.x LTS) from https://nodejs.org/en/
- [Yarn](https://yarnpkg.com/en/)


### Getting started

```sh
$ git clone https://github.com/islos-efe-eme/product
$ cd product
$ yarn

# Local preview
$ yarn docs:dev

# Local build (optional)
$ yarn docs:build

# Deploy to production
$ yarn deploy
```

### New section

```sh
$ mkdir docs/my-section
$ touch docs/my-section/README.md
$ nano docs/my-section/README.md
```

Now, add the route `'/my-section/'` to the array of routes in `.vuepress/config.js`.

Your new section will be available under _domain.com/my-section/_ once deployed. 
