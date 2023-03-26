CREATE FUNCTION search_vozos(search text)
RETURNS SETOF vozos AS $$
    SELECT *
    FROM vozos
    WHERE
      search <% (title || ' ' || description || ' ' || tags || ' ' || reactions || ' ' || categories)
    ORDER BY
      similarity(search, (title || ' ' || description || ' ' || tags || ' ' || reactions || ' ' || categories)) DESC
    LIMIT 5;
$$ LANGUAGE sql STABLE;
