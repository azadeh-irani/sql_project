SELECT pageview_url,
count(distinct website_pageview_id) as pageviewsessions
FROM website_pageviews
where created_at < '2012-06-09'
group by pageview_url
order by pageviewsessions  desc ;



 