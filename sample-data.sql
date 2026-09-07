-- Sample Data for Helpdesk Database

INSERT INTO Users (name, email, role) VALUES
('Alice Admin', 'alice.admin@helpdesk.com', 'Admin'),
('Bob Agent', 'bob.agent@helpdesk.com', 'Agent'),
('Charlie Customer', 'charlie.customer@helpdesk.com', 'Customer');

INSERT INTO Categories (name) VALUES
('Networking'),
('Software'),
('Hardware');

INSERT INTO Tickets (user_id, category_id, subject, description, priority, status)
VALUES
(3, 1, 'Internet not working', 'Customer reports no internet connectivity.', 'High', 'Open'),
(3, 2, 'Application crash', 'Customer reports CRM software crashing frequently.', 'Medium', 'Open'),
(3, 3, 'Laptop overheating', 'Customer reports laptop overheating during use.', 'Critical', 'In Progress');

INSERT INTO Resolutions (ticket_id, resolved_by, resolution_notes)
VALUES
(1, 2, 'Reset router and restored connectivity.'),
(2, 2, 'Updated CRM software to latest version.');
