CREATE FUNCTION search_vozos(search text) 
returns setof vozos AS $$ 
SELECT   * 
FROM     vozos 
WHERE    search <% ( description ) or   search <% ( tags ) or search <% (reactions)
ORDER BY similarity(search, ( description )) DESC,  similarity(search, ( tags )) DESC, similarity(search, ( reactions )) DESC limit 5; 

$$ language sql stable;
