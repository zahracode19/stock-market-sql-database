-- Insert companies into stocks table
INSERT INTO stocks VALUES ('AAPL', 'Apple Inc.', 'Information Technology');
INSERT INTO stocks VALUES ('AMZN', 'Amazon.com, Inc.', 'Consumer Discretionary');
INSERT INTO stocks VALUES ('GS', 'The Goldman Sachs Group, I...', 'Financial');
INSERT INTO stocks VALUES ('JNJ', 'Johnson & Johnson', 'Health Care');
INSERT INTO stocks VALUES ('JPM', 'JPMorgan Chase & Co.', 'Financials');
INSERT INTO stocks VALUES ('MSFT', 'Microsoft Corporation', 'Information Technology');
INSERT INTO stocks VALUES ('NVDA', 'Nvidia Corporation', 'Information Technology');
INSERT INTO stocks VALUES ('TSLA', 'Tesla, Inc', 'Consumer Discretionary');
INSERT INTO stocks VALUES ('V', 'Visa Inc,', 'Financials');
INSERT INTO stocks VALUES ('XOM', 'Exxon Mobil Corporation', 'Energy');


INSERT into prices(ticker, price_date, open_price, close_price, volume)
VALUES
('AAPL', '2026-08-05', 309.36, 311.00, 449438800),
('AAPL', '2026-08-06', 314.34, 312.41, 46139900),
('AAPL', '2026-08-07', 311.45, 313.33, 34407100),
('AMZN', '2026-08-05', 281.59, 272.65, 45119800),
('AMZN', '2026-08-06', 272.77, 272.26, 30672900),
('AMZN', '2026-08-07', 272.87, 274.48, 33833300),
('GS', '2026-08-05', 1063.71, 1060.38, 1648000),
('GS', '2026-08-06', 1038.34, 1032.58, 1726500),
('GS', '2026-08-07', 1038.34, 1039.61, 1429400),
('JNJ', '2026-08-05', 255.25, 257.59, 6472600),
('JNJ', '2026-08-06', 261.41, 256.98, 6931800),
('JNJ', '2026-08-07', 255.89, 259.24, 6531100),
('JPM', '2026-08-05', 358.97, 359.24, 5269500),
('JPM', '2026-08-06', 362.81, 356.30, 5820100),
('JPM', '2026-08-07', 355.76, 357.52, 4565200),
('MSFT', '2026-08-05', 496.36, 487.46, 33388900),
('MSFT', '2026-08-06', 488.55, 499.86, 36441500),
('MSFT', '2026-08-07', 499.21, 499.99, 28818000),
('NVDA', '2026-08-05', 216.86, 219.22, 158187400),
('NVDA', '2026-08-06', 221.53, 218.99, 113940600),
('NVDA', '2026-08-07', 221.54, 223.96, 105473700),
('TSLA', '2026-08-05', 323.42, 321.55, 27820800),
('TSLA', '2026-08-06', 317.05, 319.53, 26033800),
('TSLA', '2026-08-07', 322.34, 328.58, 39370100),
('V', '2026-08-05', 372.30, 370.47, 5022300),
('V', '2026-08-06', 369.57, 370.47, 5022300),
('V', '2026-08-07', 368.51, 362.50, 5110600),
('XOM', '2026-08-05', 155.04, 151.63, 12227500),
('XOM', '2026-08-06', 154.22, 154.84, 11879100),
('XOM', '2026-08-07', 152.64, 153.04, 18450600)











