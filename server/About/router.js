const express = require('express');
const router = express.Router();
const api = require('./methods');
// 查询评论
router.post('/selReview', (req, res, next) => {
  api.selReview(req, res, next);
});
// 添加评论
router.post('/addRate', (req, res, next) => {
  api.addRate(req, res, next);
});
//更新时间
router.post('/addVisitDays', (req, res, next) => {
  api.addVisitDays(req, res, next);
});
//更新访问用户
router.post('/updateAccessUser', (req, res, next) => {
  api.updateAccessUser(req, res, next);
});
//更新新增用户
router.post('/addnewMember', (req, res, next) => {
  api.addnewMember(req, res, next);
});
//查询访问记录
router.post('/qryVisitorRecord', (req, res, next) => {
  api.qryVisitorRecord(req, res, next);
});
module.exports = router;