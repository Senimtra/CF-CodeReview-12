CREATE DATABASE `cr12_mounteverest_gregor`;

CREATE TABLE `cr12_mounteverest_gregor`.`locations` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `loc_name` VARCHAR(30) NOT NULL,
    `price` FLOAT(6,2) NOT NULL,
    `descr_short` VARCHAR(100) NOT NULL,
    `descr_long` VARCHAR(255) NOT NULL,
    `longitude` FLOAT(20,17) NOT NULL,
    `latitude` FLOAT(20,17) NOT NULL,
    `loc_image` VARCHAR(255) NOT NULL
);

INSERT INTO `locations` (`loc_name`, `price`, `longitude`, `latitude`, `loc_image`) VALUES
('Grand Canyon', 2365.35, 36.41005042304209, -113.6837406325074, 'http://shallow.codes/images_CR12/loc01_grand_canyon.jpg'),
('Yosemite', 2779.75, 37.873575066875745, -119.54840070709253, 'http://shallow.codes/images_CR12/loc02_yosemite.jpg'),
('Yellowstone', 2595.95, 44.47091626420048, -110.60502608313007, 'http://shallow.codes/images_CR12/loc03_yellowstone.jpg'),
('Maui', 2191.65, 20.821489885834872, -156.32948070152685, 'http://shallow.codes/images_CR12/loc04_maui.jpg'),
('Glacier National Park', 2733.75, 48.7658261806736, -113.797820797297, 'http://shallow.codes/images_CR12/loc05_glacier_national_park.jpg'),
('New York City', 2867.75, 40.78516597560759, -73.97066018369479, 'http://shallow.codes/images_CR12/loc06_new_york_city.jpg'),
('San Francisco', 2597.65, 37.77791925797439, -122.41331728191315, 'http://shallow.codes/images_CR12/loc07_san_francisco.jpg'),
('New Orleans', 1873.50, 29.986665488662695, -90.11406706000491, 'http://shallow.codes/images_CR12/loc08_new_orleans.jpg'),
('Honolulu - Oahu', 1978.00, 21.34470041396861, -157.86814733164968, 'http://shallow.codes/images_CR12/loc09_honolulu_oahu.jpg'),
('Zion National Park', 1688.50, 37.28972678794037, -113.02619097352179, 'http://shallow.codes/images_CR12/loc10_zion_national_park.jpg'),
('Mount Rushmore Memorial', 1335.80, 43.87971842420531, -103.45883447192388, 'http://shallow.codes/images_CR12/loc11_mount_rushmore.jpg'),
('Grand Teton National Park', 1940.40, 43.7957204623226, -110.64099897071905, 'http://shallow.codes/images_CR12/loc12_grand_teton_national_park.jpg'),
('Washington D.C.', 1538.79, 38.94886896319399, -77.05302462988006, 'http://shallow.codes/images_CR12/loc13_washington_DC.jpg'),
('Moab', 1762.85, 38.59662947876731, -109.55091794107302, 'http://shallow.codes/images_CR12/loc14_moab.jpg'),
('Lake Tahoe', 2749.20, 39.10817094143398, -120.02849841812974, 'http://shallow.codes/images_CR12/loc15_lake_tahoe.jpg'),
('Bar Harbor', 2507.70, 44.3865952199345, -68.19883715602417, 'http://shallow.codes/images_CR12/loc16_bar_harbor.jpg'),
('Kauai', 2850.55, 22.11222467878571, -159.52779257419255, 'http://shallow.codes/images_CR12/loc17_kauai.jpg'),
('San Diego', 1844.85, 32.71453871705458, -117.18317581494316, 'http://shallow.codes/images_CR12/loc18_san_diego.jpg'),
('Jackson Hole', 1502.30, 43.49007603858515, -110.75959328760086, 'http://shallow.codes/images_CR12/loc19_jackson_hole.jpg'),
('Boston', 1578.20, 42.36151512866298, -71.05127988737712, 'http://shallow.codes/images_CR12/loc20_boston.jpg'),
('Big Sur', 1921.10, 36.27479123256241, -121.80898815597979, 'http://shallow.codes/images_CR12/loc21_big_sur.jpg'),
('Chicago', 2205.10,41.91974227495192, -87.6231211090291, 'http://shallow.codes/images_CR12/loc22_chicago.jpg'),
('Aspen', 2671.65, 39.2237946596566, -106.80614070432905, 'http://shallow.codes/images_CR12/loc23_aspen.jpg'),
('Seattle', 2646.30, 47.60831365052479, -122.34619246758842, 'http://shallow.codes/images_CR12/loc24_seattle.jpg'),
('Miami', 2875.75, 25.762294476251693, -80.19306886528955, 'http://shallow.codes/images_CR12/loc25_miami.jpg'),
('Sedona', 2578.40, 34.87150352796626, -111.76633950890704, 'http://shallow.codes/images_CR12/loc26_sedona.jpg'),
('Las Vegas', 2652.60, 36.11381362353569, -115.179050802427, 'http://shallow.codes/images_CR12/loc27_las_vegas.jpg'),
('Charleston, SC', 2609.85, 32.79083245988531, -79.89347510788339, 'http://shallow.codes/images_CR12/loc28_charleston_SC.jpg'),
('Steamboat Springs', 2281.30, 40.51170353106822, -106.83311489405541, 'http://shallow.codes/images_CR12/loc29_steamboat_springs.jpg'),
('Key West', 1310.10, 24.55519207797936, -81.78140069184802, 'http://shallow.codes/images_CR12/loc30_key_west.jpg'),
('Telluride', 1820.50, 37.93675188114693, -107.8122100893559, 'http://shallow.codes/images_CR12/loc31_telluride.jpg'),
('Monterey', 1974.90, 36.642090330669454, -121.90627623758273, 'http://shallow.codes/images_CR12/loc32_monterey.jpg'),
('Outer Banks', 2407.10, 35.571078100532134, -75.46468069520162, 'http://shallow.codes/images_CR12/loc33_outer_banks.jpg'),
('Denver', 1524.70, 39.77845901793831, -104.95461232567891, 'http://shallow.codes/images_CR12/loc34_denver.jpg'),
('Hilton Head', 2453.80, 32.26078248940459, -80.7435889157485, 'http://shallow.codes/images_CR12/loc35_hilton_head.jpg'),
('Savannah', 2876.30, 32.07950140872799, -81.09454507333017, 'http://shallow.codes/images_CR12/loc36_savannah.jpg'),
('Portland, OR', 1720.30, 45.50799073073046, -122.67493484750297, 'http://shallow.codes/images_CR12/loc37_portland_OR.jpg'),
('Adirondacks', 1895.99, 44.21065077711462, -73.88658935132422, 'http://shallow.codes/images_CR12/loc38_adirondacks.jpg'),
('Santa Fee', 1795.20, 36.02907331827065, -106.07273125783792, 'http://shallow.codes/images_CR12/loc39_santa_fe.jpg');











