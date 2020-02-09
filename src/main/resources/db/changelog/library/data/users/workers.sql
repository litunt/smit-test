--changeset lilia:addWorker-library_worker-ADMIN
INSERT INTO library.library_worker (username, name, password)
VALUES ('admin', 'Admin Test', crypt('admin123', gen_salt('bf')));
--rollback DELETE FROM library.library_worker WHERE worker_id = 1

--changeset lilia:addWorker-library_worker-REGULAR
INSERT INTO library.library_worker (username, name, password)
VALUES ('regular', 'Regular Test', crypt('regular123', gen_salt('bf')));
--rollback DELETE FROM library.library_worker WHERE worker_id = 2