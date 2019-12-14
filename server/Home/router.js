const express = require('express');
const router = express.Router();
const api = require('./methods');
// 登录
router.post('/login', (req, res, next) => {
  api.login(req, res, next);
});
// 特供专题
router.post('/getClassificationData', (req, res, next) => {
  api.getClassificationData(req, res, next);
});
// 热门资源
router.post('/HotResources', (req, res, next) => {
  api.HotResources(req, res, next);
});
module.exports = router;