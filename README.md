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

// Product

// menampilkan data product
.get http://localhost:4000/product

// insert data product
.push http://localhost:4000/product

// delete data product
.delete http://localhost:4000/product/id

// update data product
.put http://localhost:4000/product/id

//search name product
.get http://localhost:4000/product?searcrh=

// get page by limit product
.get http://localhost:4000/product?limit=10&page=2

//sort product
.get http://localhost:4000/product?field=id&sort=asc

// transaction

// menampilkan data transaction
.get http://localhost:4000/transaction

// menampilkan detail transaction user yang login
.get http://localhost:4000/mytransaction

// menampilkan detail transaction user
.get http://localhost:4000/detail/id

// insert data transaction
.push http://localhost:4000/transaction

// delete data transaction
.delete http://localhost:4000/transaction/id

//search name transaction
.get http://localhost:4000/transaction?searcrh=

// get page by limit transaction
.get http://localhost:4000/transaction?limit=10&page=2

//sort transaction
.get http://localhost:4000/transaction?field=id&sort=asc

// User

// menampilkan data user
.get http://localhost:4000/user

// menampilkan detail user
.get http://localhost:4000/userdetails

// login
.post http://localhost:4000/login

// register
.post http://localhost:4000/register

// insert data user
.push http://localhost:4000/user

// delete data user
.delete http://localhost:4000/user

// update data user
.put http://localhost:4000/user

//search name user
.get http://localhost:4000/user?searcrh=

// get page by limit user
.get http://localhost:4000/user?limit=10&page=2

//sort user
.get http://localhost:4000/user?field=id&sort=asc
