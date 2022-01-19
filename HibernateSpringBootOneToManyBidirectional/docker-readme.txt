Starting a MySQL instance is simple:

$ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:tag
... where some-mysql is the name you want to assign to your container, my-secret-pw is the password to be set
for the MySQL root user and tag is the tag specifying the MySQL version you want. See the list above for relevant tags.

1) docker run --name some-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:latest
2) docker exec -it some-mysql /bin/bash
3) mysql -u root –p
   input password (MYSQL_ROOT_PASSWORD=root)
   get prompt string
   mysql>
   mysql> create database bookstoredb;
   mysql> use bookstoredb;
   mysql> show databases;
   mysql> show tables;

   Get connection:
   jdbc:mysql://localhost:3306/bookstoredb

   example:
   select a.*, b.* from author a join book b on a.id = b.author_id where a.id = 1;

