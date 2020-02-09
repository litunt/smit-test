--changeset lilia:addWorkerRole-library_worker_and_role-1-1
INSERT INTO library.library_worker_and_role (worker_id, role_id) VALUES (1, 1);
--rollback DELETE FROM library.library_worker_and_role WHERE worker_id = 1 AND role_id = 1

--changeset lilia:addWorkerRole-library_worker_and_role-2-2
INSERT INTO library.library_worker_and_role (worker_id, role_id) VALUES (2, 2);
--rollback DELETE FROM library.library_worker_and_role WHERE worker_id = 2 AND role_id = 2