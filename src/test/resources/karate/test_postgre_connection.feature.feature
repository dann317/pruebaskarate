Feature: test the connection to databases

  Background:
    * def config = { username: 'cnxapolq', password: 'jnk1hHklW8h#D7b', url: 'jdbc:postgresql://aw0360010-apolo-qa-id.c1ldabd6xbtl.us-east-1.rds.amazonaws.com:50000/apoloqcd', driverClassName: 'org.postgresql.Driver' }
    * def DbUtils = Java.type('utils.DbUtils')
    * def db = new DbUtils(config)

  Scenario:
    * def query = db.readRows("SELECT * FROM schproducts.view_newness_third_product where company_id='2020092901'")
    Then print "El resultado de la consulta: ",query