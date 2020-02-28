// node 后端服务器
// const fs = require('fs');
// const routerApi = require('./router');
const bodyParser = require('body-parser'); // post 数据是需要
const express = require('express');
const app = express();

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({
  limit: '50mb',
  extended: true,
}));
app.all('*',function(req,res,next){
  //设置允许跨域的域名，*代表允许任意域名跨域
  res.header('Access-Control-Allow-Origin','*');
  //允许的header类型
  res.header('Access-Control-Allow-Headers','content-type');
  //跨域允许的请求方式 
  res.header('Access-Control-Allow-Methods','DELETE,PUT,POST,GET,OPTIONS');
  if (req.method.toLowerCase() == 'options')
    res.sendStatus(200);  //让options尝试请求快速结束
  else
    next();
});

//后端api路由
app.use('/Home/methods', require('./Home/router'));
app.use('/Register/methods', require('./Register/router'));
app.use('/Common/methods', require('./Common/router'));
app.use('/SelectedQuestions/methods', require('./SelectedQuestions/router'));
app.use('/SelectedVideo/methods', require('./SelectedVideo/router'));
app.use('/About/methods', require('./About/router'));
// 监听端口
app.listen(3000);
console.log('server begin listening————port:3000......');