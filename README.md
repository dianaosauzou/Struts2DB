# Struts2DB
## Getting Started
Struts2 + MySQL example. This project was maked created with Eclipse, Dynamic Web Project.
Operation check with Apache-Tomcat v9.0, Run As Server.

### Software Required
- Eclipse 2018
- Tomcat PlugIn
- MySQL Database
- JDK 1.8 or Higher
- Tomcat 9

### Jars
- commons-beanutils-1.9.2.jar
- commons-collections-3.2.2.jar
- commons-digester-2.1.jar
- commons-fileupload-1.3.3.jar
- commons-io-2.5.jar
- commons-lang-2.4.jar
- commons-lang3-3.6.jar
- commons-logging-1.1.3.jar
- freemarker-2.3.26-incubating.jar
- javassist-3.20.0-GA.jar
- log4j-api-2.10.0.jar
- log4j-core-2.10.0.jar
- ognl-3.1.15.jar
- struts2-core-2.5.18.jar
- xmlpull-1.1.3.1.jar
- xpp3_min-1.1.4c.jar
- xstream-1.4.10.jar
- mysql-connector-java-5.1.47.jar

downlaod https://struts.apache.org/ https://dev.mysql.com/downloads/ https://logging.apache.org/log4j/2.x/

### Database Schema
DataBase Name : struts2
```
CREATE TABLE `struts2db` (
  `ID` INT(5) DEFAULT NULL,
  `NAME` VARCHAR(20) DEFAULT NULL,
  `EMAIL` VARCHAR(50) DEFAULT NULL,
  `CITY` VARCHAR(30) DEFAULT NULL
);
```
### Project Structure in Eclipse
<img src="https://user-images.githubusercontent.com/6063541/50571296-d4307f80-0de9-11e9-8ced-d598375254dc.png">
