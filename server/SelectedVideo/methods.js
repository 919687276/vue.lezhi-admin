const mysql = require('mysql');
const dbConfig = require('../db'); // 数据库配置
// const sqlMap = require('./sqlMap'); // sql语句

const pool = mysql.createPool({
  host: dbConfig.mysql.host,
  user: dbConfig.mysql.user,
  password: dbConfig.mysql.password,
  database: dbConfig.mysql.database,
  port: dbConfig.mysql.port,
  multipleStatements: true // 支持多语句查询
});

module.exports = {
  qryVideoData(req, res){
    const subject = req.body.subject;
    const education = req.body.education;
    const year = req.body.year;
    const edition = req.body.edition;
    const type = req.body.type;
    const grade = req.body.grade;
    let sql = 'select * from lz_video where 1=1 and subject = ? and education = ?';
    if(year!=='不限') sql = sql+ ' and year = "'+year+'"';
    if(edition!=='不限') sql = sql+ ' and edition = "'+edition+'"';
    if(type!=='不限') sql = sql+ ' and type = "'+type+'"';
    if(grade!=='不限') sql = sql+ ' and grade = "'+grade+'"';
    pool.getConnection((err, connection) => {
      connection.query(sql,[subject, education], (err, result) => {
        if(err){
          console.log(err);
          result.send(err);
        }else{
          if(result.length>0){
            for(let i=0;i<result.length;i+=1){
              result[i].teachingMaterial = result[i].teachingMaterial.split(',');
              result[i].label = result[i].label.split(',');
            }
            let responseData = {
              'videoData': result,
              'isExist': true,
            };
            res.json(encodeURIComponent((JSON.stringify(responseData))));
          }else{
            let responseData = {
              'videoData': result,
              'isExist': false,
            };
            res.json(encodeURIComponent((JSON.stringify(responseData))));
          }
        }
        connection.release();
      });
    });
  },
  updateBrowseTimes(req, res){
    pool.getConnection((err, connection) => {
      const id = req.body.id;
      const sql = 'update lz_video set browseTimes = browseTimes + 1  where  id = ?';
      connection.query(sql,[id], (err, result) => {
        if(err){
          console.log(err);
          result.send(err);
        }else{
          let responseData = {
            'update': result,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
          
        }
        connection.release();
      });
    });
  }
};