const Core = require('@alicloud/pop-core');
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
  }
};