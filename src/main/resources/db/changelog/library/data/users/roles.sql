--changeset lilia:addRole-library_worker_role-ADMIN
INSERT INTO library.library_worker_role (role_name) VALUES ('ROLE_ADMIN');
--rollback DELETE FROM library.library_worker_role WHERE role_id = 1

--changeset lilia:addRole-library_worker_role-REGULAR
INSERT INTO library.library_worker_role (role_name) VALUES ('ROLE_REGULAR');
--rollback DELETE FROM library.library_worker_role WHERE role_id = 2