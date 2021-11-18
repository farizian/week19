const express = require('express');
const cors = require('cors');
const http = require('http');
const parser = require('body-parser');
const { port } = require('./src/helper/env');
const userrouter = require('./src/routers/userrouter');
const prdrouter = require('./src/routers/productrouter');
const catrouter = require('./src/routers/categoryrouter');
const promorouter = require('./src/routers/promo');
const transrouter = require('./src/routers/transactionrouter');

const app = express();
app.use(cors());
app.use(parser.json());
app.use(userrouter);
app.use(prdrouter);
app.use(catrouter);
app.use(promorouter);
app.use(transrouter);
app.use(express.static(`${__dirname}/src/img`));

const server = http.createServer(app);
const PORT = port || 4000;
server.listen(PORT, () => {
  // eslint-disable-next-line no-console
  console.log(`Service berjalan di port ${PORT}`);
});

module.exports = app;
