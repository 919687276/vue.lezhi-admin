const express = require('express');
const router = express.Router();
const api = require('./methods');
// 查询视频
router.post('/qryVideoData', (req, res, next) => {
  api.qryVideoData(req, res, next);
});
// 更新浏览次数
router.post('/updateBrowseTimes', (req, res, next) => {
  api.updateBrowseTimes(req, res, next);
});
module.exports = router;