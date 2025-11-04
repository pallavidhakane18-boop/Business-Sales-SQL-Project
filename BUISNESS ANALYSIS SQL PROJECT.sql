CREATE DATABASE business_analysis;
USE business_analysis;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    region VARCHAR(50),
    joining_date DATE,
    target DECIMAL(10,2),
    manager VARCHAR(50)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    date DATE,
    employee_id INT,
    product VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(12,2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO employees (employee_id, name, department, region, joining_date, target, manager)
VALUES
(101, 'Priya Sharma', 'Sales', 'North', '2023-02-12', 100000.00, 'Raj Mehta'),
(102, 'Aman Patel', 'Sales', 'South', '2023-05-07', 80000.00, 'Raj Mehta'),
(103, 'Neha Rao', 'Marketing', 'East', '2022-11-10', 70000.00, 'Aditi Nair'),
(104, 'Rohit Singh', 'Sales', 'West', '2022-09-15', 90000.00, 'Meera Singh'),
(105, 'Sana Kapoor', 'Sales', 'Central', '2023-01-20', 85000.00, 'Raj Mehta'),
(106, 'Arjun Mehta', 'Sales', 'North', '2022-12-25', 95000.00, 'Raj Mehta'),
(107, 'Kavita Joshi', 'Sales', 'South', '2023-03-11', 75000.00, 'Raj Mehta'),
(108, 'Vikram Desai', 'Sales', 'West', '2023-04-08', 65000.00, 'Meera Singh'),
(109, 'Maya Iyer', 'Marketing', 'East', '2022-08-15', 70000.00, 'Aditi Nair'),
(110, 'Karan Verma', 'Sales', 'Central', '2023-02-01', 80000.00, 'Raj Mehta'),
(111, 'Isha Nair', 'Support', 'North', '2022-07-19', 60000.00, 'Sunil Rao'),
(112, 'Deepak Kulkarni', 'Sales', 'West', '2022-10-10', 88000.00, 'Meera Singh'),
(113, 'Ritu Banerjee', 'Marketing', 'East', '2023-01-28', 70000.00, 'Aditi Nair'),
(114, 'Sahil Khan', 'Sales', 'South', '2023-03-30', 90000.00, 'Raj Mehta'),
(115, 'Pooja Reddy', 'Sales', 'North', '2023-02-18', 85000.00, 'Raj Mehta'),
(116, 'Manish Gupta', 'Support', 'Central', '2022-09-09', 60000.00, 'Sunil Rao'),
(117, 'Anita Das', 'Sales', 'East', '2023-04-14', 70000.00, 'Raj Mehta'),
(118, 'Rahul Bhatt', 'Sales', 'West', '2022-12-05', 95000.00, 'Meera Singh'),
(119, 'Sheetal More', 'Sales', 'North', '2023-05-01', 80000.00, 'Raj Mehta'),
(120, 'Vivek Roy', 'Sales', 'Central', '2023-01-10', 88000.00, 'Raj Mehta');

INSERT INTO sales (sale_id, date, employee_id, product, quantity, unit_price, total_amount)
VALUES
(1, '2025-03-23', 104, 'Laptop', 2, 56938.00, 113876.00),
(2, '2025-01-18', 104, 'SSD', 1, 5090.00, 5090.00),
(3, '2025-01-05', 101, 'Monitor', 2, 7572.00, 15144.00),
(4, '2025-03-19', 101, 'SSD', 2, 5216.00, 10432.00),
(5, '2025-03-31', 118, 'Webcam', 2, 2474.00, 4948.00),
(6, '2025-02-05', 101, 'Keyboard', 4, 968.00, 3872.00),
(7, '2025-01-20', 107, 'Printer', 1, 6429.00, 6429.00),
(8, '2025-01-13', 112, 'Printer', 2, 7429.00, 14858.00),
(9, '2025-04-04', 115, 'SSD', 1, 5473.00, 5473.00),
(10, '2025-02-18', 103, 'SSD', 2, 5329.00, 10658.00),
(11, '2025-03-21', 112, 'Smartphone', 2, 31227.00, 62454.00),
(12, '2025-01-06', 108, 'Headphones', 1, 1606.00, 1606.00),
(13, '2025-04-21', 104, 'Webcam', 2, 2476.00, 4952.00),
(14, '2025-04-17', 112, 'Keyboard', 3, 971.00, 2913.00),
(15, '2025-03-27', 109, 'Monitor', 1, 8054.00, 8054.00),
(16, '2025-02-01', 106, 'Router', 4, 2861.00, 11444.00),
(17, '2025-04-29', 118, 'Mouse', 3, 747.00, 2241.00),
(18, '2025-04-10', 102, 'Mouse', 1, 742.00, 742.00),
(19, '2025-02-21', 109, 'Monitor', 2, 8661.00, 17322.00),
(20, '2025-03-14', 111, 'Mouse', 5, 685.00, 3425.00),
(21, '2025-04-28', 115, 'Keyboard', 2, 927.00, 1854.00),
(22, '2025-04-06', 118, 'SSD', 2, 5247.00, 10494.00),
(23, '2025-02-24', 119, 'Webcam', 3, 2359.00, 7077.00),
(24, '2025-01-18', 117, 'Router', 1, 3153.00, 3153.00),
(25, '2025-04-21', 104, 'Keyboard', 1, 1058.00, 1058.00),
(26, '2025-02-24', 120, 'Monitor', 4, 7810.00, 31240.00),
(27, '2025-03-01', 117, 'Headphones', 1, 1554.00, 1554.00),
(28, '2025-01-15', 118, 'Headphones', 3, 1383.00, 4149.00),
(29, '2025-02-25', 106, 'Router', 1, 3272.00, 3272.00),
(30, '2025-04-23', 109, 'SSD', 1, 5007.00, 5007.00),
(31, '2025-01-14', 110, 'SSD', 2, 4652.00, 9304.00),
(32, '2025-04-08', 106, 'SSD', 1, 5098.00, 5098.00),
(33, '2025-03-04', 101, 'Monitor', 3, 8605.00, 25815.00),
(34, '2025-04-17', 110, 'Mouse', 1, 663.00, 663.00),
(35, '2025-03-14', 103, 'Monitor', 5, 8505.00, 42525.00),
(36, '2025-04-08', 118, 'Keyboard', 1, 1031.00, 1031.00),
(37, '2025-03-12', 106, 'Headphones', 4, 1639.00, 6556.00),
(38, '2025-04-29', 118, 'Mouse', 2, 685.00, 1370.00),
(39, '2025-03-27', 112, 'Router', 5, 2772.00, 13860.00),
(40, '2025-01-29', 103, 'Printer', 1, 7123.00, 7123.00),
(41, '2025-01-30', 119, 'Mouse', 1, 639.00, 639.00),
(42, '2025-03-22', 102, 'Mouse', 1, 756.00, 756.00),
(43, '2025-04-21', 111, 'Monitor', 2, 7645.00, 15290.00),
(44, '2025-03-04', 107, 'SSD', 1, 5223.00, 5223.00),
(45, '2025-04-23', 119, 'Smartphone', 5, 28457.00, 142285.00),
(46, '2025-03-02', 114, 'Mouse', 1, 643.00, 643.00),
(47, '2025-02-25', 112, 'Webcam', 4, 2483.00, 9932.00),
(48, '2025-04-04', 102, 'Monitor', 1, 7844.00, 7844.00),
(49, '2025-02-13', 104, 'Mouse', 2, 656.00, 1312.00),
(50, '2025-02-27', 105, 'Webcam', 1, 2389.00, 2389.00),
(51, '2025-02-01', 103, 'Router', 1, 2730.00, 2730.00),
(52, '2025-03-11', 101, 'Monitor', 2, 7466.00, 14932.00),
(53, '2025-03-04', 116, 'Mouse', 4, 756.00, 3024.00),
(54, '2025-01-22', 113, 'Laptop', 4, 57182.00, 228728.00),
(55, '2025-04-11', 115, 'Headphones', 4, 1558.00, 6232.00),
(56, '2025-04-04', 118, 'Router', 1, 2813.00, 2813.00),
(57, '2025-01-28', 102, 'Smartphone', 1, 31487.00, 31487.00),
(58, '2025-01-08', 102, 'Smartphone', 5, 30017.00, 150085.00),
(59, '2025-04-20', 117, 'Keyboard', 1, 1092.00, 1092.00),
(60, '2025-01-11', 106, 'Monitor', 1, 8280.00, 8280.00),
(61, '2025-01-31', 113, 'Monitor', 2, 8126.00, 16252.00),
(62, '2025-01-06', 120, 'Monitor', 4, 8251.00, 33004.00),
(63, '2025-03-14', 117, 'Printer', 2, 6585.00, 13170.00),
(64, '2025-04-02', 111, 'Mouse', 2, 685.00, 1370.00),
(65, '2025-03-27', 110, 'Router', 3, 3257.00, 9771.00),
(66, '2025-04-30', 103, 'Laptop', 5, 61453.00, 307265.00),
(67, '2025-03-14', 104, 'Monitor', 2, 8009.00, 16018.00),
(68, '2025-01-17', 112, 'Monitor', 2, 7791.00, 15582.00),
(69, '2025-01-21', 115, 'SSD', 2, 5111.00, 10222.00),
(70, '2025-04-14', 117, 'Laptop', 2, 65181.00, 130362.00),
(71, '2025-01-14', 105, 'Headphones', 1, 1616.00, 1616.00),
(72, '2025-04-06', 118, 'Keyboard', 2, 956.00, 1912.00),
(73, '2025-01-27', 111, 'Mouse', 2, 700.00, 1400.00),
(74, '2025-02-02', 102, 'Monitor', 4, 8526.00, 34104.00),
(75, '2025-01-06', 101, 'Printer', 1, 7191.00, 7191.00),
(76, '2025-02-03', 106, 'Router', 4, 3036.00, 12144.00),
(77, '2025-01-15', 103, 'Keyboard', 1, 1066.00, 1066.00),
(78, '2025-03-16', 118, 'Keyboard', 4, 925.00, 3700.00),
(79, '2025-02-09', 112, 'Laptop', 3, 56520.00, 169560.00),
(80, '2025-02-01', 104, 'Printer', 4, 7663.00, 30652.00),
(81, '2025-04-06', 105, 'Mouse', 1, 766.00, 766.00),
(82, '2025-04-14', 106, 'Webcam', 1, 2339.00, 2339.00),
(83, '2025-04-29', 111, 'Webcam', 2, 2383.00, 4766.00),
(84, '2025-04-11', 104, 'Webcam', 1, 2679.00, 2679.00),
(85, '2025-01-29', 107, 'Router', 3, 2883.00, 8649.00),
(86, '2025-04-12', 108, 'Mouse', 1, 722.00, 722.00),
(87, '2025-02-21', 111, 'Headphones', 1, 1640.00, 1640.00),
(88, '2025-02-05', 112, 'SSD', 4, 5179.00, 20716.00),
(89, '2025-04-18', 118, 'Printer', 1, 6461.00, 6461.00),
(90, '2025-02-03', 106, 'Smartphone', 2, 27229.00, 54458.00),
(91, '2025-03-18', 114, 'Printer', 3, 6910.00, 20730.00),
(92, '2025-03-07', 104, 'Webcam', 2, 2377.00, 4754.00),
(93, '2025-04-01', 114, 'Laptop', 2, 58370.00, 116740.00),
(94, '2025-01-09', 111, 'Smartphone', 3, 30980.00, 92940.00),
(95, '2025-01-16', 110, 'SSD', 2, 5166.00, 10332.00),
(96, '2025-02-11', 113, 'Headphones', 1, 1407.00, 1407.00),
(97, '2025-03-27', 113, 'Keyboard', 2, 981.00, 1962.00),
(98, '2025-04-17', 101, 'Headphones', 2, 1413.00, 2826.00),
(99, '2025-04-11', 119, 'Smartphone', 3, 29789.00, 89367.00),
(100, '2025-02-26', 107, 'SSD', 5, 5293.00, 26465.00),
(101, '2025-04-12', 106, 'Monitor', 2, 8024.00, 16048.00),
(102, '2025-03-23', 120, 'Printer', 1, 7445.00, 7445.00),
(103, '2025-04-07', 108, 'Headphones', 2, 1591.00, 3182.00),
(104, '2025-01-19', 101, 'Laptop', 2, 65807.00, 131614.00),
(105, '2025-03-20', 103, 'Router', 4, 3231.00, 12924.00),
(106, '2025-03-15', 107, 'Webcam', 5, 2449.00, 12245.00),
(107, '2025-01-19', 101, 'Monitor', 4, 7550.00, 30200.00),
(108, '2025-04-13', 117, 'Router', 1, 3034.00, 3034.00),
(109, '2025-04-28', 104, 'Router', 1, 3180.00, 3180.00),
(110, '2025-03-27', 117, 'SSD', 3, 5450.00, 16350.00),
(111, '2025-04-25', 115, 'Smartphone', 4, 31983.00, 127932.00),
(112, '2025-03-12', 115, 'Keyboard', 5, 990.00, 4950.00),
(113, '2025-04-07', 108, 'Headphones', 5, 1538.00, 7690.00),
(114, '2025-02-05', 115, 'Monitor', 2, 7575.00, 15150.00),
(115, '2025-02-12', 111, 'SSD', 1, 4638.00, 4638.00),
(116, '2025-01-30', 113, 'Keyboard', 2, 912.00, 1824.00),
(117, '2025-02-22', 111, 'SSD', 5, 4915.00, 24575.00),
(118, '2025-01-27', 114, 'Webcam', 1, 2678.00, 2678.00),
(119, '2025-04-08', 119, 'Webcam', 5, 2252.00, 11260.00),
(120, '2025-02-15', 110, 'Webcam', 4, 2519.00, 10076.00),
(121, '2025-04-05', 118, 'Smartphone', 2, 29929.00, 59858.00),
(122, '2025-02-04', 114, 'Router', 1, 2933.00, 2933.00),
(123, '2025-03-27', 113, 'Keyboard', 5, 1083.00, 5415.00),
(124, '2025-03-21', 118, 'Laptop', 4, 61102.00, 244408.00),
(125, '2025-03-26', 101, 'Monitor', 4, 7417.00, 29668.00),
(126, '2025-03-01', 106, 'Laptop', 2, 58549.00, 117098.00),
(127, '2025-01-28', 115, 'Printer', 3, 7365.00, 22095.00),
(128, '2025-02-18', 109, 'Webcam', 2, 2667.00, 5334.00),
(129, '2025-03-02', 101, 'SSD', 1, 5499.00, 5499.00),
(130, '2025-02-14', 108, 'Monitor', 1, 8406.00, 8406.00),
(131, '2025-02-01', 107, 'Laptop', 1, 56862.00, 56862.00),
(132, '2025-03-02', 104, 'Smartphone', 2, 29790.00, 59580.00),
(133, '2025-02-02', 112, 'Keyboard', 1, 1055.00, 1055.00),
(134, '2025-01-21', 110, 'Monitor', 1, 8686.00, 8686.00),
(135, '2025-03-15', 113, 'Webcam', 2, 2287.00, 4574.00),
(136, '2025-03-30', 108, 'Monitor', 2, 8560.00, 17120.00),
(137, '2025-03-18', 104, 'Smartphone', 1, 29083.00, 29083.00),
(138, '2025-02-24', 112, 'Monitor', 3, 7220.00, 21660.00),
(139, '2025-02-23', 116, 'Monitor', 4, 8737.00, 34948.00),
(140, '2025-03-23', 115, 'Keyboard', 4, 935.00, 3740.00),
(141, '2025-03-08', 109, 'Smartphone', 5, 29789.00, 148945.00),
(142, '2025-04-16', 119, 'Headphones', 3, 1605.00, 4815.00),
(143, '2025-04-17', 103, 'Headphones', 5, 1423.00, 7115.00),
(144, '2025-03-01', 119, 'Smartphone', 4, 29018.00, 116072.00),
(145, '2025-03-05', 111, 'Keyboard', 5, 942.00, 4710.00),
(146, '2025-04-13', 109, 'Printer', 2, 7532.00, 15064.00),
(147, '2025-03-31', 109, 'SSD', 1, 5016.00, 5016.00),
(148, '2025-01-25', 103, 'Mouse', 4, 698.00, 2792.00),
(149, '2025-04-08', 108, 'Router', 5, 2968.00, 14840.00),
(150, '2025-01-03', 103, 'Headphones', 2, 1471.00, 2942.00),
(151, '2025-02-01', 110, 'Smartphone', 3, 29839.00, 89517.00),
(152, '2025-03-09', 112, 'Webcam', 3, 2425.00, 7275.00),
(153, '2025-02-28', 109, 'Headphones', 2, 1419.00, 2838.00),
(154, '2025-04-03', 107, 'Printer', 1, 7340.00, 7340.00),
(155, '2025-04-08', 106, 'Mouse', 2, 733.00, 1466.00),
(156, '2025-02-05', 119, 'SSD', 2, 5480.00, 10960.00),
(157, '2025-04-17', 107, 'Headphones', 2, 1458.00, 2916.00),
(158, '2025-02-08', 101, 'SSD', 1, 4774.00, 4774.00),
(159, '2025-01-07', 118, 'Headphones', 1, 1541.00, 1541.00),
(160, '2025-04-07', 116, 'Monitor', 1, 8118.00, 8118.00),
(161, '2025-03-02', 116, 'Router', 3, 2810.00, 8430.00),
(162, '2025-01-07', 109, 'Router', 1, 3193.00, 3193.00),
(163, '2025-02-21', 116, 'Monitor', 1, 7442.00, 7442.00),
(164, '2025-04-14', 119, 'Headphones', 1, 1648.00, 1648.00),
(165, '2025-01-16', 118, 'Webcam', 2, 2637.00, 5274.00),
(166, '2025-02-18', 115, 'Router', 2, 3216.00, 6432.00),
(167, '2025-02-24', 110, 'Smartphone', 1, 30657.00, 30657.00),
(168, '2025-04-05', 104, 'Mouse', 2, 667.00, 1334.00),
(169, '2025-01-11', 106, 'Mouse', 1, 707.00, 707.00),
(170, '2025-01-21', 101, 'Webcam', 5, 2594.00, 12970.00),
(171, '2025-03-02', 110, 'Laptop', 2, 57457.00, 114914.00),
(172, '2025-02-06', 115, 'Monitor', 2, 8678.00, 17356.00),
(173, '2025-04-11', 119, 'Mouse', 4, 646.00, 2584.00),
(174, '2025-01-29', 105, 'Headphones', 1, 1371.00, 1371.00),
(175, '2025-01-22', 110, 'Smartphone', 2, 29634.00, 59268.00),
(176, '2025-03-01', 110, 'Webcam', 2, 2500.00, 5000.00),
(177, '2025-03-05', 115, 'Monitor', 1, 8623.00, 8623.00),
(178, '2025-04-05', 111, 'Smartphone', 2, 27155.00, 54310.00),
(179, '2025-01-30', 119, 'Smartphone', 1, 32997.00, 32997.00),
(180, '2025-03-28', 109, 'Smartphone', 1, 31578.00, 31578.00),
(181, '2025-01-23', 116, 'SSD', 5, 5416.00, 27080.00),
(182, '2025-01-24', 119, 'Webcam', 5, 2734.00, 13670.00),
(183, '2025-03-02', 112, 'Webcam', 3, 2410.00, 7230.00),
(184, '2025-01-14', 106, 'Printer', 4, 7271.00, 29084.00),
(185, '2025-02-06', 113, 'SSD', 1, 4954.00, 4954.00),
(186, '2025-02-10', 109, 'Printer', 1, 7658.00, 7658.00),
(187, '2025-02-21', 117, 'Laptop', 5, 58958.00, 294790.00),
(188, '2025-01-25', 117, 'Printer', 5, 7175.00, 35875.00),
(189, '2025-04-08', 102, 'Mouse', 2, 706.00, 1412.00),
(190, '2025-04-29', 110, 'Router', 5, 2772.00, 13860.00),
(191, '2025-03-22', 120, 'Mouse', 1, 673.00, 673.00),
(192, '2025-01-02', 118, 'Webcam', 1, 2362.00, 2362.00),
(193, '2025-04-18', 104, 'Router', 1, 3088.00, 3088.00),
(194, '2025-01-20', 116, 'Headphones', 2, 1474.00, 2948.00),
(195, '2025-03-03', 116, 'Mouse', 5, 707.00, 3535.00),
(196, '2025-02-19', 107, 'Smartphone', 1, 32184.00, 32184.00),
(197, '2025-02-05', 114, 'Printer', 2, 7448.00, 14896.00),
(198, '2025-02-06', 110, 'Smartphone', 5, 32191.00, 160955.00),
(199, '2025-02-27', 118, 'Router', 3, 2899.00, 8697.00),
(200, '2025-04-08', 118, 'Webcam', 5, 2716.00, 13580.00);

SHOW TABLES;

SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM sales;

SELECT * FROM sales LIMIT 5;

-- To calculate the company’s total sales amount from all transactions combined.

SELECT SUM(total_amount) AS total_revenue
FROM sales;


-- To find how much revenue each region (North, South, East, West, Central) generated.

SELECT e.region, SUM(s.total_amount) AS revenue
FROM sales s
JOIN employees e ON s.employee_id = e.employee_id
GROUP BY e.region
ORDER BY revenue DESC;


-- To find which product generated the highest total revenue and how many total units were sold for each.

SELECT product, 
       SUM(total_amount) AS revenue, 
       SUM(quantity) AS total_units
FROM sales
GROUP BY product
ORDER BY revenue DESC;


-- To identify the top 5 biggest single sales made — useful for spotting high-value deals.

SELECT *
FROM sales
ORDER BY total_amount DESC
LIMIT 5;


-- To calculate how much total sales each employee has made and find the top performers.

SELECT e.employee_id, 
       e.name, 
       SUM(s.total_amount) AS total_sales
FROM sales s
JOIN employees e ON s.employee_id = e.employee_id
GROUP BY e.employee_id, e.name
ORDER BY total_sales DESC;


-- To find the average value of each order — shows how much money the company earns per sale on average.

SELECT AVG(total_amount) AS avg_order_value
FROM sales;

-- To find the manager’s name of a specific employee (using either employee name or ID).																			

SELECT name AS employee_name, manager
FROM employees
WHERE name = 'Priya Sharma';


-- To list all employees who work under a particular manager

SELECT employee_id, name AS employee_name, department, region
FROM employees
WHERE manager = 'Raj Mehta';


-- To find out how much total revenue the business made each month — used for growth trend analysis.

SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;


-- To check whether each employee achieved their monthly target or not.

SELECT 
    e.employee_id,
    e.name,
    DATE_FORMAT(s.date, '%Y-%m') AS month,
    SUM(s.total_amount) AS month_sales,
    e.target,
    CASE 
        WHEN SUM(s.total_amount) >= e.target THEN 'Achieved'
        ELSE 'Below'
    END AS status
FROM sales s
JOIN employees e ON s.employee_id = e.employee_id
GROUP BY e.employee_id, e.name, month
ORDER BY month, month_sales DESC;


-- To calculate what percentage of employees achieved their sales target each month — helps measure team performance.

WITH monthly AS (
  SELECT 
      e.employee_id, 
      DATE_FORMAT(s.date, '%Y-%m') AS month, 
      SUM(s.total_amount) AS month_sales, 
      e.target
  FROM sales s 
  JOIN employees e USING(employee_id)
  GROUP BY e.employee_id, month
)
SELECT 
    month,
    ROUND(100 * SUM(month_sales >= target) / COUNT(*), 2) AS pct_meeting_target
FROM monthly
GROUP BY month
ORDER BY month;


-- To check which products perform best by comparing revenue, units sold, and their average selling price.

SELECT 
    product,
    SUM(total_amount) AS revenue,
    SUM(quantity) AS total_units,
    AVG(unit_price) AS avg_price
FROM sales
GROUP BY product
ORDER BY revenue DESC;


-- To see how much revenue each region generated every month — perfect for trend or heatmap visuals.

WITH by_region_month AS (
  SELECT 
      e.region, 
      DATE_FORMAT(s.date, '%Y-%m') AS month, 
      SUM(s.total_amount) AS revenue
  FROM sales s 
  JOIN employees e USING(employee_id)
  GROUP BY e.region, month
)
SELECT 
    region, 
    month, 
    revenue
FROM by_region_month
ORDER BY region, month;


-- To find each employee’s biggest single sale — helps identify who closes high-value deals.

SELECT 
    s.employee_id, 
    e.name, 
    MAX(s.total_amount) AS highest_sale
FROM sales s 
JOIN employees e USING(employee_id)
GROUP BY s.employee_id, e.name
ORDER BY highest_sale DESC;


-- To see how much percentage of total company revenue comes from top-performing employees.

WITH emp_sales AS (
  SELECT 
      employee_id, 
      SUM(total_amount) AS total_sales
  FROM sales
  GROUP BY employee_id
)
SELECT 
    e.employee_id, 
    e.name, 
    es.total_sales,
    ROUND(100 * es.total_sales / (SELECT SUM(total_sales) FROM emp_sales), 2) AS pct_of_total
FROM emp_sales es
JOIN employees e USING(employee_id)
ORDER BY es.total_sales DESC
LIMIT 5;


-- To see how much revenue comes from new vs experienced employees based on how long they’ve been with the company.

SELECT 
    CASE 
        WHEN DATEDIFF('2025-04-30', joining_date) < 365 THEN '0–1 yr'
        WHEN DATEDIFF('2025-04-30', joining_date) BETWEEN 365 AND 730 THEN '1–2 yrs'
        ELSE '2+ yrs' 
    END AS tenure_group,
    SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN employees e USING(employee_id)
GROUP BY tenure_group
ORDER BY FIELD(tenure_group, '0–1 yr', '1–2 yrs', '2+ yrs');


-- Leaderboard (rank employees by total sales)

SELECT employee_id, name, total_sales,
       RANK() OVER (ORDER BY total_sales DESC) AS sales_rank
FROM (
  SELECT e.employee_id, e.name, SUM(s.total_amount) AS total_sales
  FROM sales s
  JOIN employees e USING(employee_id)
  GROUP BY e.employee_id, e.name
) t;


-- To identify which employee made the highest total sales in every month.

WITH monthly_emp AS (
  SELECT 
      DATE_FORMAT(s.date, '%Y-%m') AS month, 
      e.employee_id, 
      e.name, 
      SUM(s.total_amount) AS month_sales
  FROM sales s 
  JOIN employees e USING(employee_id)
  GROUP BY month, e.employee_id, e.name
)
SELECT 
    month, 
    employee_id, 
    name, 
    month_sales
FROM (
  SELECT *, 
         ROW_NUMBER() OVER (PARTITION BY month ORDER BY month_sales DESC) AS rn
  FROM monthly_emp
) x
WHERE rn = 1
ORDER BY month;


-- Measure month-to-month revenue change (MoM %).

WITH monthly AS (
  SELECT DATE_FORMAT(date, '%Y-%m') AS month,
         SUM(total_amount) AS revenue
  FROM sales
  GROUP BY month
)
SELECT month,
       revenue,
       LAG(revenue) OVER (ORDER BY month) AS prev_revenue,
       ROUND(100 * (revenue - LAG(revenue) OVER (ORDER BY month)) / NULLIF(LAG(revenue) OVER (ORDER BY month),0), 2) AS pct_change
FROM monthly
ORDER BY month;


-- 3-month moving average to smooth trends.

WITH monthly AS (
  SELECT DATE_FORMAT(date, '%Y-%m') AS month, SUM(total_amount) AS revenue
  FROM sales
  GROUP BY month
)
SELECT month, revenue,
       ROUND(AVG(revenue) OVER (ORDER BY month ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 2) AS rolling_3m_avg
FROM monthly
ORDER BY month;


-- To create a combined performance score for each employee using their total sales, number of sales, and average sale value.

WITH emp AS (
  SELECT 
      e.employee_id, 
      e.name,
      SUM(s.total_amount) AS total_sales,
      COUNT(s.sale_id) AS num_sales,
      AVG(s.total_amount) AS avg_sale
  FROM sales s 
  JOIN employees e USING(employee_id)
  GROUP BY e.employee_id, e.name
)
SELECT 
    employee_id, 
    name, 
    total_sales, 
    num_sales, 
    avg_sale,
    (total_sales/100000) * 0.6 
    + (num_sales/50) * 0.3 
    + (avg_sale/10000) * 0.1 AS performance_score
FROM emp
ORDER BY performance_score DESC;


-- Flag outlier sales (z-score).

WITH stats AS (
  SELECT AVG(total_amount) AS mean_val, STDDEV_POP(total_amount) AS std_val
  FROM sales
)
SELECT s.*,
       ROUND((s.total_amount - stats.mean_val) / NULLIF(stats.std_val,0), 3) AS z_score,
       CASE WHEN ABS((s.total_amount - stats.mean_val) / NULLIF(stats.std_val,0)) > 2 THEN 'OUTLIER' ELSE 'OK' END AS flag
FROM sales s
CROSS JOIN stats;


-- Create reusable view for monthly employee performance 

CREATE OR REPLACE VIEW monthly_employee_performance AS
SELECT DATE_FORMAT(s.date,'%Y-%m') AS month,
       e.employee_id,
       e.name,
       SUM(s.total_amount) AS month_sales,
       COUNT(s.sale_id) AS month_orders
FROM sales s
JOIN employees e USING(employee_id)
GROUP BY month, e.employee_id, e.name;

SELECT * FROM monthly_employee_performance LIMIT 10;


-- To quickly find the top-performing employees for any selected month and limit the count (like Top 5).

DELIMITER $$

CREATE PROCEDURE top_employees_by_month(IN in_month VARCHAR(7), IN top_n INT)
BEGIN
  SELECT employee_id, name, month_sales
  FROM (
    SELECT 
        DATE_FORMAT(s.date, '%Y-%m') AS month,
        e.employee_id,
        e.name,
        SUM(s.total_amount) AS month_sales
    FROM sales s 
    JOIN employees e USING(employee_id)
    GROUP BY month, e.employee_id, e.name
  ) t
  WHERE month = in_month
  ORDER BY month_sales DESC
  LIMIT top_n;
END $$

DELIMITER ;

-- Example to run:
CALL top_employees_by_month('2025-03', 5);



-- To see each employee’s joining date, first sale month, and total sales since their first sale — great for onboarding or growth analysis.

WITH first_sale AS (
  SELECT 
      employee_id, 
      MIN(DATE_FORMAT(date, '%Y-%m')) AS first_sale_month
  FROM sales
  GROUP BY employee_id
)
SELECT 
    e.employee_id,
    e.name,
    e.joining_date,
    fs.first_sale_month,
    SUM(s.total_amount) AS sales_since_first
FROM employees e
LEFT JOIN first_sale fs USING(employee_id)
LEFT JOIN sales s 
  ON e.employee_id = s.employee_id 
  AND DATE_FORMAT(s.date, '%Y-%m') >= COALESCE(fs.first_sale_month, '1900-01')
GROUP BY e.employee_id, e.name, e.joining_date, fs.first_sale_month
ORDER BY sales_since_first DESC;





















