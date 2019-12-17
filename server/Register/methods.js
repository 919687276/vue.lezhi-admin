const mysql = require('mysql');
const dbConfig = require('../db'); // 数据库配置
const sqlMap = require('./sqlMap'); // sql语句
const fs = require('fs');

const pool = mysql.createPool({
  host: dbConfig.mysql.host,
  user: dbConfig.mysql.user,
  password: dbConfig.mysql.password,
  database: dbConfig.mysql.database,
  port: dbConfig.mysql.port,
  multipleStatements: true // 支持多语句查询
});

module.exports = {
  
  saveUserInfo(req, res) {
    const type = req.body.base64img.substring(req.body.base64img.indexOf('/')+1,req.body.base64img.indexOf(';'));
    const imgData = req.body.base64img;
    //过滤data:URL
    const base64Data = imgData.replace(/^data:image\/\w+;base64,/, '');
    const dataBuffer = Buffer.from(base64Data, 'base64');
    const imgSrc = 'C:\\images\\images\\user\\' + req.body.imgname + '.' + type;
    fs.writeFile(imgSrc, dataBuffer, function(err) {
      if(err){
        let responseData = {
          'isregister': false,
          'message': err,
        };
        res.json(responseData);
      }else{
        pool.getConnection((err, connection) => {
          const sql = sqlMap.saveUser;
          const nickname = req.body.nickname;
          const password = req.body.password;
          const phone = req.body.phone.toString();
          const date = req.body.date;
          const desc = req.body.desc;
          const userimg = 'http://www.caibo919687276.cn/images/user/' + req.body.imgname + '.' + type;
          // nickname,password,phone,date,desc,userimg
          connection.query(sql,[nickname,password,phone,date,desc,userimg], (err) => {
            if(err){
              let responseData = {
                'isregister': false,
                'message': err,
              };
              res.json(responseData);
            }else{
              let responseData = {
                'isregister': true,
              };
              res.json(responseData);
            }
            connection.release();
          });
        });
      }
    });
  },
  isExistUser(req, res){
    const phone = req.body.phone;
    pool.getConnection((err, connection) => {
      const sql = sqlMap.checkUser;
      connection.query(sql,[phone], (err, result) => {
        if(err){
          result.send(err);
        }else{
          if(result.length>0){
            let responseData = {
              'isExist': true,
            };
            res.json(responseData);
          }else{
            const responseData = {
              'isExist': false,
            };
            res.json(responseData);
          }
        }
        connection.release();
      });
    });
  },
  checkUserPwd(req,res){
    const phone = req.body.phone;
    const password = req.body.password;
    pool.getConnection((err, connection) => {
      const sql = sqlMap.checkUserPwd;
      connection.query(sql,[phone], (err, result) => {
        if(err){
          res.send(err);
        }else{
          if(result[0].user_password === password){
            let responseData = {
              'status': false,
            };
            res.json(responseData);
          }else{
            let responseData = {
              'status': true,
            };
            res.json(responseData);
          }
        }
        connection.release();
      });
    });
  },
  updateUserPwd(req,res){
    console.log('true');
    const phone = req.body.phone;
    const password = req.body.password;
    pool.getConnection((err, connection) => {
      const sql = sqlMap.updateUserPwd;
      connection.query(sql,[password,phone], (err) => {
        if(err){
          let responseData = {
            'status': false,
            'message': err,
          };
          res.json(responseData);
        }else{
          let responseData = {
            'status': true,
          };
          res.json(responseData);
        }
        connection.release();
      });
    });
  },
};