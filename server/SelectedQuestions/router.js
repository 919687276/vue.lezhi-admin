const express = require('express');
const router = express.Router();
const api = require('./methods');
// 查看试题
router.post('/qryQuestionData', (req, res, next) => {
  api.qryQuestionData(req, res, next);
});
// 更新浏览次数
router.post('/updateBrowseTimes', (req, res, next) => {
  api.updateBrowseTimes(req, res, next);
});

module.exports = router;