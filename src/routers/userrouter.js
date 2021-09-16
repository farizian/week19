// untuk menghandle router table user

const express = require('express');
const userctrl = require('../controllers/userctrl');
// const midAuth = require('../middleware/auth');
const upload = require('../middleware/upload');

const userrouter = express.Router();
userrouter
  .get('/user', userctrl.getlist)
  // .get('/userdetails', midAuth, userctrl.getdetail)
  .get('/userdetails', userctrl.getdetail)
  .post('/user', upload, userctrl.insert)
  .post('/login', userctrl.login)
  .post('/register', userctrl.register)
  // .delete('/user/:id', midAuth, userctrl.del)
  .delete('/user/:id', userctrl.del)
  // .put('/user/:id', midAuth, upload, userctrl.update);
  .put('/user/:id', upload, userctrl.update);

module.exports = userrouter;
