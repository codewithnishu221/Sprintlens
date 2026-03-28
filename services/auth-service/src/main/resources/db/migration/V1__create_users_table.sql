CREATE TABLE IF NOT EXISTS users (
    id          VARCHAR(255)        NOT NULL,
    name        VARCHAR(255)        NOT NULL,
    email       VARCHAR(255)        NOT NULL,
    password    VARCHAR(255)        NOT NULL,
    role        VARCHAR(50)         NOT NULL,
    created_at  TIMESTAMP           NOT NULL,
    updated_at  TIMESTAMP,

    CONSTRAINT pk_users PRIMARY KEY (id),
    CONSTRAINT uq_users_email UNIQUE (email)
);

CREATE INDEX IF NOT EXISTS idx_users_email ON users(email);