create table tbl_user_pattern
(
    -- primary key
    id              bigint unsigned                             not null,

    -- columns
    characteristic  varchar(300)                                not null,

    -- common columns
    created_by      bigint unsigned                             not null,
    created_at      timestamp       default current_timestamp   not null,
    updated_by      bigint unsigned                             not null,
    updated_at      timestamp       default current_timestamp   not null on update current_timestamp,
    deleted_by      bigint unsigned                                 null,
    deleted_at      timestamp                                       null,

    -- constraints
    primary key (id, characteristic),
    foreign key (id) references tbl_user (id)

    ) engine = InnoDB
    default charset = utf8mb4
    collate = utf8mb4_unicode_ci
    comment = 'user pattern table';
