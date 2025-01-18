-- Active: 1736603302174@@127.0.0.1@3306@task_api
CREATE Table tasks(
id int PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL UNIQUE,
description TEXT,
priority ENUM('low','medium','high') DEFAULT 'low',
is_completed TINYINT (1) NOT NULL DEFAULT 0 COMMENT '0: Not compeleted , 1: compeleted',
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON update CURRENT_TIMESTAMP
);