create database spring_rest_api;

use spring_rest_api;

create table users (
    username varchar(100) not null,
    password varchar(100) not null,
    name varchar(100) not null,
    token varchar(100),
    token_expired_at bigint,
    PRIMARY KEY (username),
    unique (token)
) ENGINE InnoDB;

select * from users;
desc users;

create table contacts (
    id varchar(100) not null,
    username varchar(100) not null,
    first_name varchar(100) not null,
    last_name varchar(100),
    phone varchar(100),
    email varchar(100),
    primary key (id),
    unique (email),
    foreign key fk_users_contact (username) references users(username)
)ENGINE InnoDB;

desc contacts;

create table addresses (
    id varchar(100) not null,
    contact_id varchar(100) not null,
    street varchar(200),
    city varchar(100),
    province varchar(100),
    country varchar(100),
    postal_code varchar(10),
    primary key (id),
    foreign key fk_contacts_addresses (contact_id) references contacts(id)
) engine InnoDB;

desc addresses;