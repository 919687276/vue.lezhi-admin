const sqlMap = {
  login: 'SELECT * FROM lz_user WHERE user_phone = ? and user_password = ?',
  ClassificationDataOne: 'select * from lz_indexinfo_specialtopic where sort = 1 order by id asc',
  ClassificationDataTwo: 'select * from lz_indexinfo_specialtopic where sort = 2 order by id asc',
  HotResourcesOne: 'select * from lz_indexinfo_hotresource where sort = 1 order by id asc',
  HotResourcesTwo: 'select * from lz_indexinfo_hotresource where sort = 2 order by id asc',
};
module.exports =sqlMap;