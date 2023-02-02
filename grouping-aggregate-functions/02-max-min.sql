-- SELECT MAX(num_seats) FROM tables;
-- SELECT MIN(num_seats) FROM tables;
-- SELECT MAX(amount_billed) AS max_billed, MAX(amount_tipped) AS max_tipped FROM bookings;
-- SELECT MIN(category), MAX(category) FROM tables; -- for strings MIN gets the first letter alphabetically, MAX - the last
SELECT MIN(booking_date), MAX(booking_date) FROM bookings; -- MIN/MAX for dates