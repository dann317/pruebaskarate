Feature: test the connection to databases

  Background:
    * def config = { username: 'CCXTAUTC', password: 'DPwidivjdsT+myW1e2Loaw==', url: 'jdbc:p6spy:as400://10.9.2.221/', driverClassName: 'com.ibm.as400.access.AS400JDBCDriver' }
    * def DbUtils = Java.type('utils.DbUtils')
    * def db = new DbUtils(config)

  Scenario:
    * def query = db.readRows("SELECT * FROM CRPLIBRAMD.CRPFFUSRBE WHERE CEDULA = 'userdeposit'")
    Then print "El resultado de la consulta: ",query