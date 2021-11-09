const fs = require('fs');
const models = require('../models/promomodel');
const { success, failed } = require('../helper/response');

const promo = {
  getList: (req, res) => {
    try {
      const { query } = req;
      const search = query.search === undefined ? '' : query.search;
      const field = query.field === undefined ? 'id' : query.field;
      const typeSort = query.sort === undefined ? 'ASC' : query.sort;
      const limit = query.limit === undefined ? 10 : query.limit;
      const offset = query.page === undefined || query.page === 1 ? 0 : (query.page - 1) * limit;
      models.getList(search, field, typeSort, limit, offset).then(async (result) => {
        const alldata = await models.getAllData();
        const response = {
          data: result,
          totalPage: Math.ceil(alldata.length / limit),
          page: req.query.page,
        };
        success(res, response, 'success');
      }).catch((err) => {
        failed(res, 404, err);
        // console.log(err)
      });
    } catch (error) {
      failed(res, 401, error);
      // res.json(error)
    }
  },
  getdetails: (req, res) => {
    try {
      const { id } = req.params;
      models.getdetails(id).then((result) => {
        success(res, result, 'success');
        // res.json(result)
      }).catch((err) => {
        failed(res, 404, err);
        // console.log(err)
      });
    } catch (error) {
      failed(res, 401, error);
      // res.json(error)
    }
  },
  insert: (req, res) => {
    try {
      const { body } = req;
      const img = !req.file ? '' : req.file.filename;
      models.insert(body, img).then((result) => {
        success(res, result, 'success');
        // res.json(result)
      }).catch((err) => {
        failed(res, 404, err);
        // console.log(err)
      });
    } catch (error) {
      failed(res, 401, error);
      // res.json(error)
    }
  },
  update: async (req, res) => {
    try {
      if (req.file === '' || !req.file) {
        failed(res, 411, 'Field Tidak Boleh Kosong');
      } else {
        const { body } = req;
        const { id } = req.params;
        const img = req.file.filename;
        const imgName = await models.getimg(id);
        const imgPath = `./src/img/${imgName[0].img}`;
        fs.unlink(imgPath, ((errImg) => {
          if (errImg) {
            models.update(id, body, img).then((result) => {
              success(res, result, 'Update Promo Success');
            })
              .catch((err) => {
                failed(res, 404, err);
              });
          } else {
            models.update(img, body, id).then((result) => {
              success(res, result, 'Update Promo Success');
            })
              .catch((err) => {
                failed(res, 404, err);
              });
          }
        }));
      }
    } catch (err) {
      failed(res, 500, err);
    }
  },
  destroy: async (req, res) => {
    try {
      const { id } = req.params;
      const imgName = await models.getimg(id);
      const imgPath = `./src/img/${imgName[0].img}`;
      fs.unlink(imgPath, ((errImg) => {
        if (errImg) {
          models.del(id).then((result) => {
            success(res, result, 'Delete Promo Success');
          })
            .catch((err) => {
              failed(res, 404, err);
            });
        } else {
          models.del(id).then((result) => {
            success(res, result, 'Delete Promo With Img Success');
          })
            .catch((err) => {
              failed(res, 404, err);
            });
        }
      }));
    } catch (err) {
      failed(res, 404, err);
    }
  },
};
module.exports = promo;
