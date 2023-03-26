CREATE INDEX vozos_gin_idx ON vozos
USING GIN ((title || ' ' || description || ' ' || tags || ' ' || reactions) gin_trgm_ops);
