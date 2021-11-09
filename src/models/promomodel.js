const db = require('../config/db');

const promomodel = {
  getAllData: () => new Promise((resolve, reject) => {
    db.query('select * from promo', (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  }),
  getList: (search, field, typeSort, limit, offset) => new Promise((resolve, reject) => {
    db.query(`select * from promo where promoTitle LIKE '%${search}%' ORDER BY ${field} ${typeSort} LIMIT ${limit} OFFSET ${offset}`, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  }),
  getdetails: (id) => new Promise((resolve, reject) => {
    db.query(`select * from promo where id='${id}'`, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  }),
  getimg: (id) => new Promise((resolve, reject) => {
    db.query(`select img from promo where id='${id}'`, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  }),
  insert: (body, img) => new Promise((resolve, reject) => {
    const { promoTitle, description } = body;
    db.query(`INSERT INTO promo (promoTitle, description, img) value ('${promoTitle}', '${description}', '${img}')`, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  }),
  update: (id, body, img) => new Promise((resolve, reject) => {
    const { promoTitle, description } = body;
    db.query(`UPDATE promo SET promoTitle ='${promoTitle}', description = '${description}', img = '${img}'  where id = ${id}`, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  }),
  destroy: (id) => new Promise((resolve, reject) => {
    db.query(`DELETE FROM promo WHERE id=${id}`, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  }),
};
module.exports = promomodel;
