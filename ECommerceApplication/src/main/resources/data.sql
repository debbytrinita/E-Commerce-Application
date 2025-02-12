INSERT INTO users (user_id, first_name, last_name, mobile_number, email, password) VALUES
(1001, 'John', 'Doe', '1812345678', 'john@gmail.com', 'password123'),
(1002, 'Jane', 'Smith', '1823456789', 'jane@gmail.com', 'password123'),
(1003, 'Alice', 'Johnson', '1834567890', 'alice@gmail.com', 'password123'),
(1004, 'Bob', 'Brown', '1845678901', 'bob@gmail.com', 'password123'),
(1005, 'Charlie', 'Davis', '1856789012', 'charlie@gmail.com', 'password123'),
(1006, 'David', 'Wilson', '1867890123', 'david@gmail.com', 'password123'),
(1007, 'Emily', 'Clark', '1878901234', 'emily@gmail.com', 'password123'),
(1008, 'Frank', 'Harris', '1889012345', 'frank@gmail.com', 'password123'),
(1009, 'Grace', 'Lewis', '1890123456', 'grace@gmail.com', 'password123'),
(1010, 'Henry', 'Walker', '1801234567', 'henry@gmail.com', 'password123')
-- ON CONFLICT (user_id) DO UPDATE SET password = EXCLUDED.password;
ON CONFLICT DO NOTHING;

INSERT INTO roles (role_id, role_name) VALUES
(101, 'ADMIN'),
(102, 'USER')
ON CONFLICT DO NOTHING;

INSERT INTO user_role (user_id, role_id) VALUES
(1001, 101), -- John: ADMIN
(1002, 101), -- Jane: ADMIN
(1003, 102),        
(1004, 102),       
(1005, 102),       
(1006, 102),       
(1007, 102), 
(1008, 102),       
(1009, 102),       
(1010, 102)
ON CONFLICT DO NOTHING;       

INSERT INTO addresses (address_id, country, state, city, pincode, street, building_name) VALUES
(1001, 'Indonesia', 'DKI Jakarta', 'Jakarta', '10110', 'Jl. Merdeka No. 1', 'Menara Merdeka'),
(1002, 'Indonesia', 'Jawa Barat', 'Bandung', '40111', 'Jl. Asia Afrika No. 2', 'Gedung Sate'),
(1003, 'Indonesia', 'Jawa Timur', 'Surabaya', '60222', 'Jl. Tunjungan No. 3', 'Tunjungan Plaza'),
(1004, 'Indonesia', 'DIY', 'Yogyakarta', '55133', 'Jl. Malioboro No. 4', 'Malioboro Mall'),
(1005, 'Indonesia', 'Sumatera Utara', 'Medan', '20234', 'Jl. Gatot Subroto No. 5', 'Plaza Medan Fair'),
(1006, 'Indonesia', 'Bali', 'Denpasar', '80123', 'Jl. Sunset Road No. 6', 'Sunset Plaza'),
(1007, 'Indonesia', 'Sulawesi Selatan', 'Makassar', '90144', 'Jl. Pettarani No. 7', 'Menara Pettarani'),
(1008, 'Indonesia', 'Kalimantan Timur', 'Balikpapan', '76111', 'Jl. Sudirman No. 8', 'Balikpapan Plaza'),
(1009, 'Indonesia', 'Papua', 'Jayapura', '99351', 'Jl. Percetakan No. 9', 'Jayapura Tower'),
(1010, 'Indonesia', 'Nusa Tenggara Timur', 'Kupang', '85228', 'Jl. El Tari No. 10', 'Kupang Center')
ON CONFLICT DO NOTHING; 

INSERT INTO user_address (user_id, address_id) VALUES
(1001, 1001),  
(1002, 1002),  
(1003, 1003),  
(1004, 1004),  
(1005, 1005),  
(1006, 1006), 
(1007, 1007),  
(1008, 1008),  
(1009, 1009),  
(1010, 1010)
ON CONFLICT DO NOTHING;

INSERT INTO categories (category_id, category_name) VALUES
(1001, 'Laptop'),
(1002, 'Smartphone'),
(1003, 'Electronics'),
(1004, 'Audio'),
(1005, 'Gaming'),
(1006, 'Accessories'),
(1007, 'Home Appliances'),
(1008, 'Fashion'),
(1009, 'Beauty'),
(1010, 'Sport')
ON CONFLICT DO NOTHING;

INSERT INTO products (product_id, product_name, image, description, quantity, price, discount, special_price, category_id) VALUES
(1001, 'Laptop Asus ROG', 'asus_rog.jpg', 'Laptop gaming dengan performa tinggi', 50, 25000000, 10.0, 22500000, 1001),
(1002, 'iPhone 15 Pro', 'iphone_15.jpg', 'Smartphone flagship dari Apple', 30, 20000000, 5.0, 19000000, 1002),
(1003, 'Samsung Galaxy S23', 'samsung_s23.jpg', 'HP Android premium dari Samsung', 40, 18000000, 7.5, 16650000, 1002),
(1004, 'Smart TV 55 Inch', 'smart_tv.jpg', 'TV pintar dengan resolusi 4K', 25, 10000000, 8.0, 9200000, 1003),
(1005, 'Headphone Sony WH-1000XM4', 'sony_wh1000xm4.jpg', 'Headphone noise-canceling terbaik', 60, 5000000, 10.0, 4500000, 1004),
(1006, 'PlayStation 5', 'ps5.jpg', 'Konsol game terbaru dari Sony', 20, 9000000, 5.0, 8550000, 1005),
(1007, 'Mechanical Keyboard Razer', 'razer_keyboard.jpg', 'Keyboard gaming mekanikal premium', 70, 2500000, 12.0, 2200000, 1006),
(1008, 'Mouse Logitech G Pro', 'logitech_gpro.jpg', 'Mouse gaming wireless terbaik', 80, 1800000, 8.0, 1656000, 1006),
(1009, 'Monitor LG 27 Inch', 'lg_monitor.jpg', 'Monitor gaming dengan refresh rate tinggi', 35, 4500000, 10.0, 4050000, 1003),
(1010, 'Air Purifier Xiaomi', 'xiaomi_purifier.jpg', 'Pembersih udara pintar', 50, 2000000, 15.0, 1700000, 1007)
ON CONFLICT DO NOTHING;

INSERT INTO carts (cart_id, user_id, total_price) VALUES
(1001, 1001, 0),  
(1002, 1002, 0), 
(1003, 1003, 12000000.0),  
(1004, 1004, 35000000.0),  
(1005, 1005, 9000000.0),   
(1006, 1006, 15500000.0),  
(1007, 1007, 20000000.0),  
(1008, 1008, 5000000.0),   
(1009, 1009, 18000000.0),  
(1010, 1010, 25000000.0)
ON CONFLICT DO NOTHING; 

INSERT INTO cart_items (cart_item_id, cart_id, product_id, quantity, discount, product_price) VALUES
(1001, 1003, 1001, 2, 10.0, 22500000),  
(1002, 1003, 1003, 1, 7.5, 16650000),   
(1003, 1004, 1002, 1, 5.0, 19000000),   
(1004, 1005, 1005, 3, 10.0, 4500000),  
(1005, 1006, 1006, 2, 5.0, 8550000),    
(1006, 1007, 1008, 4, 8.0, 1656000),    
(1007, 1008, 1004, 1, 8.0, 9200000),   
(1008, 1009, 1007, 2, 12.0, 2200000),   
(1009, 1010, 1009, 1, 10.0, 4050000),   
(1010, 1010, 1004, 3, 15.0, 1700000)
ON CONFLICT DO NOTHING;  

INSERT INTO payments (payment_id, payment_method) VALUES
(1001, 'Credit Card'),
(1002, 'Bank Transfer'),
(1003, 'PayPal'),
(1004, 'E-Wallet'),
(1005, 'Cash on Delivery'),
(1006, 'Debit Card'),
(1007, 'Credit Card'),
(1008, 'E-Wallet'),
(1009, 'Bank Transfer'),
(1010, 'Bank Transfer')
ON CONFLICT DO NOTHING;

INSERT INTO orders (order_id, email, order_date, payment_id, total_amount, order_status) VALUES
(1001, 'alice@gmail.com', '2024-02-01', 1001, 45000000.0, 'Completed'),
(1002, 'alice@gmail.com', '2024-02-02', 1002, 23500000.0, 'Pending'),
(1003, 'bob@gmail.com', '2024-02-03', 1003, 12000000.0, 'Shipped'),
(1004, 'charlie@gmail.com', '2024-02-04', 1004, 35000000.0, 'Completed'),
(1005, 'emily@gmail.com', '2024-02-05', 1005, 9000000.0, 'Canceled'),
(1006, 'grace@gmail.com', '2024-02-06', 1006, 15500000.0, 'Processing'),
(1007, 'frank@gmail.com', '2024-02-07', 1007, 20000000.0, 'Pending'),
(1008, 'david@gmail.com', '2024-02-08', 1008, 5000000.0, 'Completed'),
(1009, 'henry@gmail.com', '2024-02-09', 1009, 18000000.0, 'Shipped'),
(1010, 'henry@gmail.com', '2024-02-10', 1010, 25000000.0, 'Completed')
ON CONFLICT DO NOTHING;

INSERT INTO order_items (order_item_id, product_id, order_id, quantity, discount, ordered_product_price) VALUES
(1001, 1001, 1001, 2, 5.0, 2000000.0),
(1002, 1002, 1001, 1, 10.0, 1500000.0),
(1003, 1003, 1002, 3, 0.0, 9000000.0),
(1004, 1004, 1002, 2, 15.0, 1700000.0),
(1005, 1005, 1003, 5, 0.0, 5000000.0),
(1006, 1006, 1004, 1, 5.0, 8000000.0),
(1007, 1007, 1005, 4, 7.0, 1200000.0),
(1008, 1008, 1006, 2, 3.0, 4500000.0),
(1009, 1009, 1007, 1, 0.0, 3000000.0),
(1010, 1010, 1008, 3, 5.0, 6000000.0)
ON CONFLICT DO NOTHING;


