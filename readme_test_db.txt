https://github.com/datacharmer/test_db 참조

1. test_db.zip 압축을 풀고, CMD로 새창을 열고, 압축 푼 디렉토리로 이동한다.
2. CMD에서 아래 명령을 실행한다.
mysql -uroot -p[password] < employees.sql
패스워드가 설정되어 있을 경우 [password]이부분에 패스워드 입력, 없을 경우 -p없이 실행한다.
3. 실행이 완료되면, MySQL Workbench 통해 아래 명령어를 실행한다.
use employees;
show tables;
