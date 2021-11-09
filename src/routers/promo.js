const express = require('express');
const {
  getList, getdetails, insert, update, destroy,
} = require('../controllers/promo');
const midAuth = require('../middleware/auth');
const upload = require('../middleware/upload');

const promorouter = express.Router();

promorouter
  .get('/promo', midAuth, getList)
  .get('/promo/:id', midAuth, getdetails)
  .post('/promo', midAuth, upload, insert)
  .put('/promo/:id', midAuth, upload, update)
  .delete('/promo/:id', midAuth, destroy);

module.exports = promorouter;
