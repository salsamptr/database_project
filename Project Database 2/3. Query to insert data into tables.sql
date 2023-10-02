USE [RoCALink]

INSERT INTO Staff VALUES
('ST001', 'Kamiliya Putri', 'kamiliyap3@rocalink.com','081212538675', 'Female', 1500000),
('ST002', 'Ibanez Raffi Lucass Tyosaki', 'ibanezraffi12@rocalink.com','081280666257', 'Male', 5000000),
('ST003', 'Winda Widiastuti', 'windawidiastuti20@rocalink.com','081218558757', 'Female', 2000000),
('ST004', 'Fairuz Zahrah', 'fairuzzahrah3@rocalink.com','081213790001', 'Female', 4000000),
('ST005', 'Cahiyono', 'cahiyono@rocalink.com','081212008885', 'Male', 8000000),
('ST006', 'Mahfud Effendi', 'mahfudeffendi@rocalink.com','081214555321', 'Male', 2000000),
('ST007', 'Suryaningsih', 'suryaningsih@rocalink.com','082133419901', 'Female', 5000000),
('ST008', 'Nurhayati', 'nurhayati@rocalink.com','082133399922', 'Female', 1500000),
('ST009', 'Nabil Fikri Raikan', 'nabilfikri14@rocalink.com','081218588695', 'Male', 2500000),
('ST010', 'Atharrayan Tsaqif', 'rayan12@rocalink.com','081219559912', 'Male', 5000000),
('ST011', 'Farel Gibran Alfarez', 'farelgibran@rocalink.com','082112559904', 'Male', 7000000),
('ST012', 'Fawwazir Siddiq', 'fawwazir@rocalink.com','082114119975', 'Male', 8000000),
('ST013', 'Tio Santoso', 'tiosantoso@rocalink.com','081219578865', 'Male', 9000000),
('ST014', 'Adi Putra', 'adiputra@rocalink.com','081212556678', 'Male', 1500000),
('ST015', 'Bambang Sudoyono', 'bambang11@rocalink.com','081214666699', 'Male', 8000000)

INSERT INTO Customer VALUES
('CU001', 'Mohammad Alexander', '081214558877', 'Male', 'alexander@gmail.com'),
('CU002', 'Alifia Anggraini', '082115557775', 'Female', 'alifia@gmail.com'),
('CU003', 'Nurul Fajar Dyningsih', '081214669971', 'Female', 'dyningsih@gmail.com'),
('CU004', 'Daffa Ramadhani', '082117779007', 'Male', 'daffaramadhani@gmail.com'),
('CU005', 'Aji Wahana', '082122118119', 'Male', 'ajiwahana@gmail.com'),
('CU006', 'Eza Satya', '081218881208', 'Male', 'ezasatya@gmail.com'),
('CU007', 'Muhammad Wildan Surya', '082122330598', 'Male', 'wildansurya@gmail.com'),
('CU008', 'Rahen', '082145774412', 'Male', 'rahen@gmail.com'),
('CU009', 'Neliya Fitri', '082144991122', 'Female', 'neliyafitri@gmail.com'),
('CU010', 'Yusuf Mansur', '082143812222', 'Male', 'yusufmansur@gmail.com'),
('CU011', 'Farrah Ilyamarcy', '081267776619', 'Female', 'farrah127@gmail.com'),
('CU012', 'Bintang Ramadhan', '082199125517', 'Male', 'bintangramadhan@gmail.com'),
('CU013', 'Susi Susilawati', '082199814319', 'Female', 'susisusilawati@gmail.com'),
('CU014', 'Chessa Cornelia', '081235678222', 'Female', 'chessacornelia@gmail.com'),
('CU015', 'Esya Fitri', '082191811221', 'Female', 'esyafitri@gmail.com')

INSERT INTO [Transaction] VALUES
('TR001','ST001','CU001','2020-11-01'),
('TR002','ST003','CU001','2020-12-02'),
('TR003','ST002','CU002','2020-12-12'),
('TR004','ST004','CU003','2020-01-13'),
('TR005','ST006','CU004','2020-08-14'),
('TR006','ST005','CU005','2020-02-15'),
('TR007','ST008','CU006','2020-02-16'),
('TR008','ST007','CU005','2020-02-15'),
('TR009','ST010','CU007','2020-02-13'),
('TR010','ST009','CU008','2020-03-06'),
('TR011','ST004','CU009','2020-04-12'),
('TR012','ST004','CU010','2020-06-20'),
('TR013','ST002','CU001','2020-07-21'),
('TR014','ST005','CU009','2020-07-23'),
('TR015','ST002','CU004','2020-12-30')

INSERT INTO BikeType VALUES
('BT001', 'BMX'),
('BT002', 'Hybrid'),
('BT003', 'Lipat'),
('BT004', 'Fixie'),
('BT005', 'Touring'),
('BT006', 'Listrik'),
('BT007', 'Balap'),
('BT008', 'Gunung'),
('BT009', 'Listrik'),
('BT010', 'BMX')

INSERT INTO BikeBrand VALUES
('BR001', 'Cannondale Bike', 'Best brand for Touring Bike', 'www.cannondalebike.com', 'Canada'),
('BR002', 'Giant Bike', 'Cheapest brand', 'www.giantbike.com', 'Indonesian'),
('BR003', 'GT Bike', 'Great selection of Mountain Bike', 'www.gtbike.com', 'United States of America'),
('BR004', 'Polygon Bike', 'Specialized in Racing', 'www.polygonbike.com', 'Eropa'),
('BR005', 'Wimcycle Bike', 'Folding Bike Specialist', 'www.wimcyclebike.com', 'Indonesian'),
('BR006', 'United Bike', 'No 1 BMX Brand','www.unitedbike.com', 'Indonesian'),
('BR007', 'Specialized Bike', 'Specialized Road Bike', 'www.specializedbike.com', 'United States of America'),
('BR008', 'Santa Cruz Bike', 'No 2 for Road Bike', 'www.SantaCruzbike.com', 'United States of America'),
('BR009', 'Fuji Bike', 'Highend Brand', 'www.fujibike.com', 'Jepang')

INSERT INTO GroupSet VALUES
('GR001', 'Chainrings', 6, 'True'),
('GR002', 'CrankSet', 11, 'False'),
('GR003', 'Rear Sprockets', 11, 'False'),
('GR004', 'Shimano Brakes', 8, 'False'),
('GR005', 'Shifter', 7, 'False'),
('GR006', 'Derailleurs', 5, 'True'),
('GR007', 'Brakes', 5, 'True'),
('GR008', 'Shifter', 10, 'False'),
('GR009', 'Levers', 9, 'False')

INSERT INTO Bike VALUES
('BK001', 'BT001','BR001','GR001', 'Cannondale Bike', 160000000, 3),
('BK002', 'BT002','BR002','GR002','Giant Bike', 10000000, 5),
('BK003', 'BT003','BR003','GR003','GT Bike', 100000000, 3),
('BK004', 'BT004','BR004','GR004','Polygon Bike', 100000000, 6),
('BK005', 'BT005','BR005','GR005','Wimcycle Bike', 100000000, 2),
('BK006', 'BT006','BR006','GR006','United Bike', 100000000, 5),
('BK007', 'BT007','BR007','GR007','Specialized Bike', 100000000, 4),
('BK008', 'BT008','BR009','GR008','Santa Cruz Bike', 120000000, 5),
('BK009', 'BT009','BR008','GR009','Fuji Bike',  134000000, 4),
('BK010', 'BT010','BR005','GR002','GT Bike', 137000000, 3),
('BK011', 'BT001','BR002','GR008','Cannondale Bike',140000000, 5),
('BK012', 'BT005','BR007','GR004','Fuji Bike', 145000000, 5),
('BK013', 'BT006','BR003','GR006','United Bike', 125000000, 6),
('BK014', 'BT008','BR004','GR002','Wimcycle Bike',143000000, 3),
('BK015', 'BT009','BR001','GR005','Polygon Bike', 150000000, 4)

INSERT INTO TransactionDetail VALUES
('TR001','BK002','1'),
('TR002','BK003','1'),
('TR003','BK003','5'),
('TR004','BK005','5'),
('TR005','BK004','2'),
('TR006','BK007','1'),
('TR007','BK009','8'),
('TR008','BK011','5'),
('TR009','BK010','4'),
('TR010','BK006','1'),
('TR011','BK008','2'),
('TR012','BK012','2'),
('TR013','BK015','3'),
('TR014','BK014','1'),
('TR015','BK001','1'),
('TR001','BK015','2'),
('TR005','BK013','4'),
('TR010','BK006','6'),
('TR002','BK007','3'),
('TR006','BK002','5'),
('TR008','BK008','7'),
('TR012','BK009','3'),
('TR015','BK010','4'),
('TR014','BK012','5'),
('TR005','BK015','6')