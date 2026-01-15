CREATE DATABASE uber_project;
USE uber_project;
CREATE TABLE uber_requests (
    request_id INT,
    pickup_point VARCHAR(20),
    driver_id INT,
    status VARCHAR(30),
    request_timestamp VARCHAR(25),
    drop_timestamp VARCHAR(25),
    request_hour VARCHAR(5),
    time_slot VARCHAR(20)
);
SELECT COUNT(*) FROM uber_requests;

SELECT status, COUNT(*)
FROM uber_requests
GROUP BY status;

SELECT time_slot, COUNT(*)
FROM uber_requests
GROUP BY time_slot
ORDER BY count(*) desc;

SELECT pickup_point, status, COUNT(*)
FROM uber_requests
GROUP BY pickup_point, status;

SELECT time_slot, COUNT(*)
FROM uber_requests
WHERE status != 'Trip Completed'
GROUP BY time_slot
ORDER BY count(*) DESC;



