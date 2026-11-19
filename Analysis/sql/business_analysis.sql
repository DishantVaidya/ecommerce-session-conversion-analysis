-- 1. How effectively is the website converting shopping sessions into purchases?

SELECT
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchase_sessions,
    SUM(Revenue = 'FALSE') AS non_purchase_sessions,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers;

-- 2. How does browsing behaviour differ between purchasing and non-purchasing sessions?

SELECT
    Revenue,
    COUNT(*) AS total_sessions,
    ROUND(AVG(Administrative), 2) AS avg_admin_pages,
    ROUND(AVG(Informational), 2) AS avg_info_pages,
    ROUND(AVG(ProductRelated), 2) AS avg_product_pages,
    ROUND(AVG(ProductRelated_Duration), 2) AS avg_product_duration
FROM online_shoppers
GROUP BY Revenue;

-- 3. Does purchase conversion differ depending on how many product-related pages visitors browse?

SELECT
    CASE
        WHEN ProductRelated = 0 THEN 'No Engagement'
        WHEN ProductRelated <= 5 THEN 'Low'
        WHEN ProductRelated <= 15 THEN 'Medium'
        ELSE 'High'
    END AS engagement_level,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchase_sessions,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY engagement_level
ORDER BY MIN(ProductRelated);

-- 4. Which visitor categories demonstrate better purchasing behaviour?

SELECT
    VisitorType,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchases,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY VisitorType
ORDER BY conversion_rate DESC;

-- 5. Which traffic categories generate the most purchasing sessions, and which demonstrate better purchase conversion?

SELECT
    TrafficType,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchases,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY TrafficType
ORDER BY total_sessions DESC;

-- 6. How does the PageValues metric differ between purchasing and non-purchasing sessions?

SELECT
    Revenue,
    COUNT(*) AS total_sessions,
    ROUND(AVG(PageValues), 2) AS avg_page_value,
    SUM(PageValues > 0) AS sessions_with_page_value
FROM online_shoppers
GROUP BY Revenue;

-- 7. How do website engagement metrics differ between purchasing and non-purchasing sessions?

SELECT
    Revenue,
    COUNT(*) AS total_sessions,
    ROUND(AVG(BounceRates), 4) AS avg_bounce_rate,
    ROUND(AVG(ExitRates), 4) AS avg_exit_rate
FROM online_shoppers
GROUP BY Revenue;

-- 8. Which months demonstrate higher purchase conversion, and does purchasing behaviour vary across months?

SELECT
    Month,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchase_sessions,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY Month
ORDER BY conversion_rate DESC;

-- 9. Do customers demonstrate different purchasing behaviour on weekends compared with weekdays?

SELECT
    Weekend,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchase_sessions,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY Weekend
ORDER BY conversion_rate DESC;

-- 10. Does proximity to special days show different purchasing behaviour?

SELECT
    SpecialDay,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchase_sessions,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY SpecialDay
ORDER BY conversion_rate DESC;

-- 11. Does purchase conversion differ across geographical regions?

SELECT
    Region,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchases,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY Region
ORDER BY conversion_rate DESC;

-- 12. Does purchase conversion differ across browsers?

SELECT
    Browser,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchases,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY Browser
ORDER BY total_sessions DESC;

-- 13. Does purchase conversion differ across operating systems?

SELECT
    OperatingSystems,
    COUNT(*) AS total_sessions,
    SUM(Revenue = 'TRUE') AS purchases,
    ROUND(AVG(Revenue = 'TRUE') * 100, 2) AS conversion_rate
FROM online_shoppers
GROUP BY OperatingSystems
ORDER BY total_sessions DESC;