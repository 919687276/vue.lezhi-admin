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
// function time(timestamp) {
//   let time = new Date(timestamp);
//   let y = time.getFullYear();
//   let m = (time.getMonth() + 1) < 10 ? '0' + (time.getMonth() + 1) : (time.getMonth() + 1);//获取当前月份的日期，不足10补0
//   let d = time.getDate() < 10 ? '0' + time.getDate() : time.getDate();//获取当前几号，不足10补0s
//   return y + '-' + m + '-' + d + ' ' + time.toTimeString().substr(0, 8);
// }
const moment = require('moment');
module.exports = {
  selReview(req, res) {
    pool.getConnection((err, connection) => {
      const sql = sqlMap.selReview;
      connection.query(sql, (err, result) => {
        // for(let i=0;i<result.length;i++) {
        //   result[i].time = time(result[i].time);
        // }
        const responseData = {
          'review': result,
        };
        res.json(encodeURIComponent((JSON.stringify(responseData))));
        connection.release();
      });
    });
  },
  addRate(req,res) {
    pool.getConnection((err, connection) => {
      const sql = sqlMap.addRate;
      const nickName = req.body.nickName;
      const time = req.body.time;
      const title = req.body.title;
      const rate = req.body.rate;
      connection.query(sql,[nickName,time,title,rate],(err , result) => {
        if(err){
          let responseData = {
            'status': false,
            'message': err,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }else{
          console.log(result);
          let responseData = {
            'status': true,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }
        connection.release();
      });
    });
  },
  addVisitDays(req,res){
    const sqlSelDay = sqlMap.selDay;
    const sqlAddDay = sqlMap.sqlAddDay;
    pool.getConnection((err, connection) => {
      for(let i=0;i<7;i++){
        connection.query(sqlSelDay,[moment().subtract(i,'days').format('YYYY-MM-DD')],(err , result) => {
          if(err){
            let responseData = {
              'status': false,
              'message': '查询出错:'+err,
            };
            res.json(encodeURIComponent((JSON.stringify(responseData))));
          }else{
            if(!(result.length>0)){
              connection.query(sqlAddDay,[moment().subtract(i, 'days').format('YYYY-MM-DD'),0,0],(err) => {
                if(err){
                  console.log(err);
                }
              });
            }
            if(i===6){
              let responseData = {
                'status': true,
              };
              res.json(encodeURIComponent((JSON.stringify(responseData))));
            }
          }
        });
      }
      connection.release();
    });
  },
  updateAccessUser(req,res){
    const sqlAccessUser = sqlMap.accessUser;
    pool.getConnection((err, connection) => {
      connection.query(sqlAccessUser,[moment().format('YYYY-MM-DD')],(err) => {
        if(err){
          let responseData = {
            'message': err,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }else{
          let responseData = {
            'status': true,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }
      });
      connection.release();
    });
  },
  addnewMember(req,res){
    const addNewMember = sqlMap.NewMember;
    pool.getConnection((err, connection) => {
      connection.query(addNewMember,[moment().format('YYYY-MM-DD')],(err) => {
        if(err){
          let responseData = {
            'message': err,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }else{
          let responseData = {
            'status': true,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }
      });
      connection.release();
    });
  },
  qryVisitorRecord(req,res){
    const AllRecord = sqlMap.selAllRecord;
    pool.getConnection((err, connection) => {
      connection.query(AllRecord,(err ,result) => {
        if(err){
          let responseData = {
            'message': err,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }else{
          let responseData = {
            columns: ['day', 'accessUser', 'newMember'],
            rows: result,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }
      });
      connection.release();
    });
  },
};