const express = require('express');
const router = express.Router();
const api = require('./methods');
// 图片上传
router.post('/saveUserInfo', (req, res, next) => {
  api.saveUserInfo(req, res, next);
});
// 判断用户是否已注册
router.post('/isExistUser', (req, res, next) => {
  api.isExistUser(req, res, next);
});
// 判断密码是否是近期所设密码
router.post('/checkUserPwd', (req, res, next) => {
  api.checkUserPwd(req, res, next);
});
router.post('/updateUserPwd', (req, res, next) => {
  api.updateUserPwd(req, res, next);
});
module.exports = router;