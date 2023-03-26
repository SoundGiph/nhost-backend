CREATE INDEX vozo_description_gin_idx ON vozos
USING GIN ((description) gin_trgm_ops);
