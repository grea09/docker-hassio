CREATE DATABASE IF NOT EXISTS iot;

FLUSH PRIVILEGES;

CREATE USER 'iot'@'%' IDENTIFIED BY '********plz_plz_change_me******'; 
GRANT ALL ON iot.* TO 'iot'@'%';
