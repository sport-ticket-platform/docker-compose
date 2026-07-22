INSERT INTO app_setting (id, max_failed_login_attempts, account_lockout_duration_second, allow_concurrent_logins, maintenance_mode, allow_new_registrations, allow_login)
VALUES (1, 5, 600, true, false, true, true)
ON CONFLICT DO NOTHING;

INSERT INTO city (name) VALUES 
('Tehran'),
('Isfahan'),
('Tabriz');

INSERT INTO sport (sport_name) VALUES 
('Football'),
('Volleyball'),
('Basketball');

INSERT INTO users (user_id, first_name, last_name, role, email, email_verified, phone_number, phone_verified, password, city_id, status) 
VALUES 
(
    1, 
    'Taha', 
    'Amini', 
    'ADMIN', 
    'taha1@gmail.com', 
    true, 
    '09123456789', 
    true, 
    '$2a$10$Z.L.lraonXSir65cakFSROtECTclUNEVxfuC.i5GYUQiRZulNu.E2', -- هَش کلمه taha
    1, 
    true
),
(
    2, 
    'Taha', 
    'Amini', 
    'USER', 
    'taha2@gmail.com', 
    true, 
    '09193456788', 
    true, 
    '$2a$10$Z.L.lraonXSir65cakFSROtECTclUNEVxfuC.i5GYUQiRZulNu.E2', -- هَش کلمه taha
    1, 
    true
);

INSERT INTO team (team_name, sport_id, city_id) VALUES 
('Persepolis', 1, 1),
('Esteghlal', 1, 1),
('Sepahan', 1, 2),
('Tractor', 1, 3);

INSERT INTO venue (name, city_id, full_address) VALUES 
('Azadi Stadium', 1, 'Tehran, District 22, Azadi Sport Complex');

INSERT INTO organizer (is_company, name, email, phone_number) VALUES 
(true, 'Iran Football Federation', 'info@ffiri.ir', '02112345678');

INSERT INTO league (name, sport_id) VALUES 
('Persian Gulf Pro League', 1);

INSERT INTO matches (league_id, sport_id, venue_id, match_time, host_team_id, guest_team_id, organizer_id) VALUES 
(1, 1, 1, '2026-08-15 18:00:00+03:30', 1, 2, 1);

INSERT INTO ticket_category (name) VALUES 
('VIP'),
('Premium'),
('Standard');

INSERT INTO ticket_category_config (match_id, category_id, price, amenities, total_seats) VALUES 
(1, 1, 1500000, '{"parking": true, "catering": true, "lounge_access": true}', 500),
(1, 2, 800000, '{"parking": false, "catering": true, "lounge_access": false}', 2000),
(1, 3, 300000, '{"parking": false, "catering": false, "lounge_access": false}', 20000);

INSERT INTO payment_methods (name, fee_percentage, is_active) VALUES 
('ZarinPal', 1.5, true),
('Saman Bank', 1.0, true);