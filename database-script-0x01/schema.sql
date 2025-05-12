CREATE TABLE User (
user_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password_hash VARCHAR(100) NOT NULL,
phone_number VARCHAR(15) NULL,
role ENUM('guest', 'host', 'admin'), NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Property (
property_id UUID PRIMARY KEY,
host_id INT,
name VARCHAR(255) NOT NULL,
description TEXT NOT NULL,
location VARCHAR(255) NOT NULL,
price_per_night DECIMAL(10, 2) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
FOREIGN KEY (host.id) REFERENCES User (user_id) ON DELETE CASCADE,
INDEX (location)
);
CREATE TABLE Booking (
booking_id UUID PRIMARY KEY,
property_id UUID,
user_id INT,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
total_price DECIMAL(10, 2) NOT NULL,
status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (property_id) REFERENCES Property(property_id) ON DELETE CASCADE,
FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
INDEX (start_date)
)
CREATE TABLE payment (
payment_id UUID PRIMARY KEY,
booking_id UUID,
amount DECIMAL(10, 2) NOT NULL,
payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
payment_method ENUM(credit_card, paypal, stripe) NOT NULL,
FOREIGN KEY (booking_id) REFERENCES Booking(booking_id) ON DELETE CASCADE,
INDEX(payment_date)
);
CREATE TABLE Review (
review_id UUID PRIMARY KEY,
property_id UUID,
user_id INT,
rating INT CHECK (rating >= 1 AND rating <= 5) NOT NULL,
comment TEXT NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (property_id) REFERENCES Property(property_id) ON DELETE CASCADE,
FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE,
INDEX(created_at)
);
