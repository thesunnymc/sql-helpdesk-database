-- Useful Queries for Helpdesk Database

-- 1. List all open tickets by priority
SELECT ticket_id, subject, priority, status
FROM Tickets
WHERE status = 'Open'
ORDER BY priority DESC;

-- 2. Count tickets resolved by each agent
SELECT u.name AS agent_name, COUNT(r.resolution_id) AS resolved_count
FROM Resolutions r
JOIN Users u ON r.resolved_by = u.user_id
GROUP BY u.name;

-- 3. Average resolution time in hours
SELECT AVG(TIMESTAMPDIFF(HOUR, t.created_at, r.resolved_at)) AS avg_resolution_hours
FROM Tickets t
JOIN Resolutions r ON t.ticket_id = r.ticket_id;

-- 4. Tickets per category
SELECT c.name AS category, COUNT(t.ticket_id) AS ticket_count
FROM Tickets t
JOIN Categories c ON t.category_id = c.category_id
GROUP BY c.name;
