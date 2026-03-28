ALTER TABLE users
    ADD CONSTRAINT chk_users_role
    CHECK (role IN ('OWNER', 'ADMIN', 'MEMBER', 'VIEWER'));

-- Add check constraint for email format (basic check)
ALTER TABLE users
    ADD CONSTRAINT chk_users_email_format
    CHECK (email LIKE '%@%');