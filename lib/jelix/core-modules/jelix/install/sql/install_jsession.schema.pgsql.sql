CREATE TABLE jsessions (
    id character varying(64) NOT NULL,
    creation time with time zone NOT NULL,
    "access" time with time zone NOT NULL,
    data bytea NOT NULL
);

ALTER TABLE ONLY jsessions
    ADD CONSTRAINT jsession_pkey PRIMARY KEY (id);