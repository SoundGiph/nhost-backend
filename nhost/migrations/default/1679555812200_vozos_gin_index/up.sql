CREATE INDEX vozos_gin_idx ON vozos
USING GIN ((description || ' ' || tags ) gin_trgm_ops);
