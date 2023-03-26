CREATE FUNCTION search_vozos(search text, category text DEFAULT NULL)
RETURNS SETOF vozos AS $$
    SELECT *
    FROM vozos
    WHERE
      search <% (description || ' ' || tags )
    ORDER BY
      similarity(search, (description || ' ' || tags)) DESC
    LIMIT 5;
$$ LANGUAGE sql STABLE;
