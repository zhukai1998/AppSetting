# MySQL
- 下载【https://dev.mysql.com/downloads/mysql/】
- 一路安装
- 配置环境变量 MYSQL_HOME=/usr/local/mysql/bin
- 修改密码 alter user 'root'@'localhost' identified with mysql_native_password by 'Your password'
- 添加用户 create user 'username'@'host' identified by 'Your password' 
-- host 为 '%' 时为任意 IP
- 赋权 grant privileges on dbname.tablename to 'username'@'host'
-- privileges: 用户的操作权限，如 select、insert、update 或者 all privileges
-- 使用以下命令可以成功，但无法远程登陆：
grant all on *.* to 'root'@'localhost';
-- 此时，可以使用以下2种方式，实现远程：
-- 1. 使用alter user
alter user set user.host='%' where user.user='root';
-- 2. 使用create user
create user 'userName'@'%' identified 'your_password';
- 导入 sql : source path
- 导出 sql
-- 导出整个数据库：mysqldump -u username -p password dbname > dbname.sql;
-- 导出数据库中的表：mysqldump -u username -p password dbname tablename > tablename.sql;
-- 导出数据库结构；mysqldump -u username -p password -d dbname > dbname.sql;
-- 导出表结构：mysqldump -u username -p password -d dbname tablename > tablename.sql
