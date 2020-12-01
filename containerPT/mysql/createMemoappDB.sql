USE memoapp_db;

create table if not exists memo_data
( 
    memo_id INT(11) auto_increment not null, 
    category INT(11), 
    title VARCHAR(64), 
    memo TEXT, 
    create_date DATETIME, 
    modified_date DATETIME, 
    primary key (memo_id) 
);

INSERT INTO memo_data (memo_id, title, memo, create_date) VALUES (1, "title", "memo", cast( now() as date));

ALTER USER 'memoapp'@'%' IDENTIFIED WITH mysql_native_password BY 'memoapp';