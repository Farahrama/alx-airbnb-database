INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role) VALUES
(1, 'John', 'Doe', '', 'hashed_password_1', '1234567890', 'guest'),
(2, 'Jane', 'Smith', '', 'hashed_password_2', '0987654321', 'host'),
(3, 'Alice', 'Johnson', '', 'hashed_password_3', NULL, 'admin');
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night) VALUES
('550e8400-e29b-41d4-a716-446655440000', 2, 'Cozy Cottage', 'A cozy cottage in the woods.', '123 Forest Lane', 150.00),
('550e8400-e29b-41d4-a716-446655440001', 2, 'Beach House', 'A beautiful beach house with ocean views.', '456 Ocean Drive', 300.00),
('550e8400-e29b-41d4-a716-446655440002', 1, 'Downtown Apartment', 'A modern apartment in the city center.', '789 City St', 200.00);
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status) VALUES
('550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440000', 1, '2023-10-01', '2023-10-05', 600.00, 'confirmed'),
('550e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440001', 1, '2023-11-01', '2023-11-07', 2100.00, 'pending'),
('550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440002', 2, '2023-12-01', '2023-12-10', 2000.00, 'canceled');
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440003', 600.00, '2023-10-01 12:00:00', 'credit_card'),
('550e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440004', 2100.00, '2023-11-01 12:00:00', 'paypal'),
('550e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440005', 2000.00, '2023-12-01 12:00:00', 'stripe');
INSERT INTO Review (review_id, property_id, user_id, rating, comment) VALUES
('550e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440000', 1, 5, 'Great place!'),
('550e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440001', 2, 4, 'Nice view but a bit noisy.'),
('550e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440002', 3, 3, 'Average experience.');