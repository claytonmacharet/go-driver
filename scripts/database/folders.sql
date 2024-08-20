create table folders(
    id serial,
    parent_id int,
    name varchar(60) not null,
    create_at timestamp default current_timestamp,
    midified_at timestamp not null,
    delete bool not null default false,
    primary key(id),
    constraint fk_parent
        foreign key(parent_id)
            references folders(id)
)ß