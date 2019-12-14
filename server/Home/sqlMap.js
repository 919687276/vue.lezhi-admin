const sqlMap = {
  login: 'SELECT * FROM user WHERE phone = ? and password = ?',
  ClassificationDataOne: 'select * from indexinfo_specialtopic where sort = 1 order by id asc',
  ClassificationDataTwo: 'select * from indexinfo_specialtopic where sort = 2 order by id asc',
  HotResourcesOne: 'select * from indexinfo_hotresource where sort = 1 order by id asc',
  HotResourcesTwo: 'select * from indexinfo_hotresource where sort = 2 order by id asc',
};
module.exports =sqlMap;