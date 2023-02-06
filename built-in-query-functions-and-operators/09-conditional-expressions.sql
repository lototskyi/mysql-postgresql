-- SELECT amount_billed, 
--     CASE WHEN amount_billed > 30 THEN 'Good day'
--         WHEN amount_billed > 15 THEN 'Normal day'
--         ELSE 'Bad Day'
--     END
--     FROM orders;


SELECT wd,
    CASE WHEN wd = 1 THEN 'Monday'
        WHEN wd = 2 THEN 'Tuesday'
        WHEN wd = 3 THEN 'Wednesday'
        WHEN wd = 4 THEN 'Thursday'
        WHEN wd = 5 THEN 'Friday'
        WHEN wd = 6 THEN 'Saturday'
        WHEN wd = 7 THEN 'Sunday'
    END,
    last_checkin FROM (
        SELECT WEEKDAY(last_checkin) + 1 AS wd, last_checkin 
        FROM memberships
    ) AS t;