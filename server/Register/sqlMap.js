
const sqlMap = {
  checkUser: 'SELECT * FROM lz_user WHERE user_phone = ?',
  checkUserPwd: 'SELECT user_password FROM lz_user WHERE user_phone = ?',
  updateUserPwd: 'UPDATE lz_user SET user_password = ? WHERE user_phone = ?',
  saveUser: 'INSERT INTO lz_user (user_nickname,user_password,user_phone,user_reg_date,user_desc,user_userimg) VALUES (?,?,?,?,?,?)',
};
module.exports =sqlMap;