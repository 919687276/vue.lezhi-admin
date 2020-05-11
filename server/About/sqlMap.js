const sqlMap = {
  selReview: 'SELECT * FROM lz_review WHERE 1=1 ORDER BY time DESC LIMIT 20',
  addRate: 'INSERT INTO lz_review (nickName,time,title,rate) VALUES (?,?,?,?)',
  selDay: 'SELECT * FROM lz_visitor_record WHERE 1=1 AND day=?',
  sqlAddDay: 'INSERT INTO lz_visitor_record (day,accessUser,newMember) VALUES (?,?,?)',
  accessUser: 'UPDATE lz_visitor_record SET accessUser = accessUser + 1  WHERE 1=1 AND day=?',
  NewMember: 'UPDATE lz_visitor_record SET newMember = newMember + 1  WHERE 1=1 AND day=?',
  selAllRecord: 'SELECT * FROM lz_visitor_record WHERE 1=1 ORDER BY day DESC LIMIT 7'
};
module.exports =sqlMap;