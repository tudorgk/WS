-- All links count
SELECT COUNT(link.link) FROM link;

-- Distinct links count
SELECT COUNT(DISTINCT link.link) FROM link;

-- Usable links
SELECT COUNT(link.link) AS vis_link FROM link
    INNER JOIN serp ON serp.id = link.serp_id
    WHERE serp.search_engine_name NOT NULL; 


-- Usable distinct links
SELECT COUNT(DISTINCT link.link) AS vis_link FROM link
    INNER JOIN serp ON serp.id = link.serp_id
    WHERE serp.search_engine_name NOT NULL; 

-- Links from yandex
SELECT COUNT(link.link) AS vis_link FROM link
    INNER JOIN serp ON serp.id = link.serp_id
    WHERE serp.search_engine_name = 'yandex';


-- Distinct links from yandex
SELECT COUNT(DISTINCT link.link) AS vis_link FROM link
    INNER JOIN serp ON serp.id = link.serp_id
    WHERE serp.search_engine_name = 'yandex';

-- Links from yandex
SELECT link.link FROM link
    INNER JOIN serp ON serp.id = link.serp_id
    WHERE serp.search_engine_name = 'yandex'
INTERSECT
SELECT link.link FROM link
    INNER JOIN serp ON serp.id = link.serp_id
    WHERE serp.search_engine_name = 'bing'
INTERSECT
SELECT link.link FROM link
    INNER JOIN serp ON serp.id = link.serp_id
    WHERE serp.search_engine_name = 'baidu';
