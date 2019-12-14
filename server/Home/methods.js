const mysql = require('mysql');
const dbConfig = require('../db'); // 数据库配置
const sqlMap = require('./sqlMap'); // sql语句

const pool = mysql.createPool({
  host: dbConfig.mysql.host,
  user: dbConfig.mysql.user,
  password: dbConfig.mysql.password,
  database: dbConfig.mysql.database,
  port: dbConfig.mysql.port,
  multipleStatements: true // 支持多语句查询
});

module.exports = {
  login(req, res) {
    var phone = req.body.phone;
    var password = req.body.password;
    pool.getConnection((err, connection) => {
      var sql = sqlMap.login;
      connection.query(sql,[phone,password], (err, result) => {
        if(result.length>0){
          const responseData = {
            'nickname': result[0].nickname,
            'userimg': result[0].userimg,
            'isExist': true,
          };
          res.json(responseData);
        }else{
          const responseData = {
            'isExist': false,
          };
          res.json(responseData);
        }
        connection.release();
      });
    });
  },
  getClassificationData(req, res) {
    pool.getConnection((err, connection) => {
      const sql1 = sqlMap.ClassificationDataOne;
      const sql2 = sqlMap.ClassificationDataTwo;
      connection.query(sql1, (err1, result1) => {
        if(err1){
          throw err;
        }else{
          connection.query(sql2, (err2, result2) => {
            if(err2){
              throw err;
            }else{
              const objData = [
                {
                  'label': result1[0].label,
                  'name': result1[0].name,
                  'data': result1,
                },
                {
                  'label': result2[0].label,
                  'name': result2[0].name,
                  'data': result2,
                }
              ];
              res.json(objData);
            }
          });
        }
        connection.release();
      });
    });
  },
  HotResources(req, res) {
    pool.getConnection((err, connection) => {
      const sql1 = sqlMap.HotResourcesOne;
      const sql2 = sqlMap.HotResourcesTwo;
      connection.query(sql1, (err1, result1) => {
      
        if(err1){
          throw err;
        }else{
          connection.query(sql2, (err2, result2) => {
            console.log(result2);
            if(err2){
              throw err;
            }else{
              const objData = [
                {
                  'label': result1[0].label,
                  'name': result1[0].name,
                  'data': result1,
                },
                {
                  'label': result2[0].label,
                  'name': result2[0].name,
                  'data': result2,
                }
              ];
              res.json(objData);
            }
          });
        }
        connection.release();
      });
    });
  },
};