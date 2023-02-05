-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin 
-- FROM memberships;

-- Day of week Postgresql
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin 
-- FROM memberships;

-- Day of week mysql
-- SELECT WEEKDAY(last_checkin), last_checkin 
-- FROM memberships;

-- get date and time from timestamp mysql
-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME), last_checkin
-- FROM memberships;

-- get date and time from timestamp postgresql
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;