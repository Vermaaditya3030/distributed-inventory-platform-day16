CREATE DATABASE inventory;
\connect inventory;
INSERT INTO stock_items(sku,quantity) VALUES ('LAPTOP-001',10),('PHONE-001',25),('HEADSET-001',50) ON CONFLICT (sku) DO NOTHING;
