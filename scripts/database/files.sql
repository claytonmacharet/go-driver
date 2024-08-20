create table files (
    id serial,
    folder_id int,
    iwner_id int not null,
    name varchar(200) not null,
    type varchar(50) not null,
    path varchar(250) not null,
    create_at timestamp default current_timestamp,
    midified_at timestamp default not null,
    delete bool not null default false,
    primary key(id),
    constraint fk_folders
        foreign key(folder_id)
            references folders(id),
    constraint fk_owner
        foreign key(owner_id)
            references users(id)
)