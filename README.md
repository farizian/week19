# Installation :

- install node-modules
`npm install`

- copy .env.example

- set databases

- Run app with node.js
`node app.js`

- open postman

- import thunder-collection_Coffeeshop.json into your postman

# RestfullAPI-ExpressJS-MySQL-CoffeeShop

// menampilkan data
.get http://localhost:4000/product

// insert data
.push http://localhost:4000/product

// delete data
.delete http://localhost:4000/product/id

// update data
.put http://localhost:4000/product/id

//search name
.get http://localhost:4000/product?searcrh=

// get page by limit
.get http://localhost:4000/product?limit=10&page=2

//sort
.get http://localhost:4000/product?field=id&sort=asc
