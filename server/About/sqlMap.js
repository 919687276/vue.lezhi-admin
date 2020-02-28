const sqlMap = {
  selReview: 'SELECT * FROM review WHERE 1=1 ORDER BY time DESC LIMIT 20',
  addRate: 'INSERT INTO review (nickName,time,title,rate) VALUES (?,?,?,?)',
  selDay: 'SELECT * FROM visitor_record WHERE 1=1 AND day=?',
  sqlAddDay: 'INSERT INTO visitor_record (day,accessUser,newMember) VALUES (?,?,?)',
  accessUser: 'UPDATE visitor_record SET accessUser = accessUser + 1  WHERE 1=1 AND day=?',
  NewMember: 'UPDATE visitor_record SET newMember = newMember + 1  WHERE 1=1 AND day=?',
  selAllRecord: 'SELECT * FROM visitor_record WHERE 1=1 ORDER BY day DESC LIMIT 7'
};
module.exports =sqlMap;