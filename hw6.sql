CREATE ROLE managers;

CREATE ROLE hr_specialists;

CREATE ROLE other_users;

/* other_users privileges */

GRANT SELECT ON ALL TABLES IN SCHEMA public TO other_users;

REVOKE SELECT ON employee FROM other_users;

GRANT other_users TO managers;

GRANT other_users TO hr_specialists;

/* Exclusive managers privileges */

GRANT SELECT ON employee TO managers;

GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO managers;

REVOKE INSERT, UPDATE, DELETE ON org FROM managers;

REVOKE INSERT, UPDATE, DELETE ON pay_grade FROM managers;

REVOKE INSERT, UPDATE, DELETE ON employee FROM managers;

REVOKE INSERT, UPDATE, DELETE ON employee_organization FROM managers;

/* Exclusive hr_specialists privileges */

GRANT SELECT ON employee TO hr_specialists;

GRANT INSERT, UPDATE, DELETE ON org TO hr_specialists;

GRANT INSERT, UPDATE, DELETE ON pay_grade TO hr_specialists;

GRANT INSERT, UPDATE, DELETE ON employee TO hr_specialists;

GRANT INSERT, UPDATE, DELETE ON employee_organization TO hr_specialists;