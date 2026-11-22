SELECT relname, pg_size_pretty(pg_total_relation_size(relid))
FROM pg_catalog.pg_statio_user_tables
ORDER BY pg_total_relation_size(relid) DESC
LIMIT 20;

-- Active queries older than 5 seconds
SELECT pid, now() - query_start AS duration, left(query, 80)
FROM pg_stat_activity WHERE state = 'active';

