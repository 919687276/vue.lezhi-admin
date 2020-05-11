const Core = require('@alicloud/pop-core');
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
  sendCode(req, res){
    
    let client = new Core({
      accessKeyId: req.body.accessKeyId,
      accessKeySecret: req.body.accessKeySecret,
      endpoint: 'https://dysmsapi.aliyuncs.com',
      apiVersion: '2017-05-25'
    });
    const randomNum = ('000000' + Math.floor(Math.random() * 999999)).slice(-6);
    const params = {
      'RegionId': 'cn-hangzhou',
      'PhoneNumbers': req.body.phone,
      'SignName': req.body.SignName,
      'TemplateCode': req.body.TemplateCode,
      'TemplateParam': '{code:'+ randomNum +'}'
    };

    const requestOption = {
      method: 'POST'
    };
    client.request('SendSms', params, requestOption).then((result) => {
      const responseData = {
        'code': randomNum,
        'status': 1,
        'content': result,
      };
      res.json(encodeURIComponent((JSON.stringify(responseData))));
    }, (ex) => {
      const responseData = {
        'status': 0,
        'content': ex,
        'message': ex.data.Message,
      };
      res.json(encodeURIComponent((JSON.stringify(responseData))));
    });
  },
  MapServ(req, res){
    pool.getConnection((err, connection) => {
      const sql = 'select * from lz_city where 1=1';
      connection.query(sql, (err, result) => {
        if(err){
          console.log(err);
          result.send(err);
        }else{
          let responseData = {
            columns: ['city', 'num'],
            rows: result,
          };
          res.json(encodeURIComponent((JSON.stringify(responseData))));
        }
        connection.release();
      });
    });
  }
};