--liquibase formatted sql
--changeset yuliya:1
CREATE TABLE notifications_tasks(
    id BIGINT bigint generated by default as identity primary key,
    message TEXT NOT NULL,
    chat_id BIGINT NOT NULL,
    notification_date_time TIMESTAMP NOT NULL
);
--changlist yuliya:2
ALTER TABLE notifications_tasks rename column chat_id to chatid;