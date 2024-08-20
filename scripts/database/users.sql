create table users(
    id serial,
    name varchar(80) not null,
    login varchar(100) not null unique,
    password varchar(200) not null,
    create_at timestamp default current_timestamp,
    midified_at timestamp not null,
    delete bool not null default current_timestamp,
    primary key(id)
)