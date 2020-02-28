const express = require('express');
const router = express.Router();
const api = require('./methods');
// 发送验证码
router.post('/sendCode', (req, res, next) => {
  api.sendCode(req, res, next);
});
router.post('/MapServ', (req, res, next) => {
  api.MapServ(req, res, next);
});
module.exports = router;