# Database Schema for Airbnb-like Project

This SQL schema defines the tables and relationships for the Airbnb-like application.

## Tables
- `User`: Stores user information such as email, role, etc.
- `Property`: Stores property details, linked to users (hosts).
- `Booking`: Stores booking information, linked to properties and users.
- `Payment`: Stores payment transactions related to bookings.
- `Review`: Stores reviews for properties by users.

## Running the Schema
1. Clone this repository.
2. Run the SQL file `schema.sql` on your MySQL database to create the tables.

```bash
mysql -u your_user -p < schema.sql

