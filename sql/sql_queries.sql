CREATE DATABASE `cr12_mounteverest_gregor`;

CREATE TABLE `cr12_mounteverest_gregor`.`locations` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `loc_name` VARCHAR(30) NOT NULL,
    `price` FLOAT NOT NULL,
    `descr_short` VARCHAR(100) NOT NULL,
    `descr_long` VARCHAR(255) NOT NULL,
    `longitude` VARCHAR(20) NOT NULL,
    `latitude` VARCHAR(20) NOT NULL,
    `image` VARCHAR(255) NOT NULL
);

INSERT INTO `locations` (`loc_name`, `longitude`, `latitude`, `image`) VALUES
('Grand Canyon', 36.41005042304209, -113.6837406325074, 'http://shallow.codes/images_CR12/loc01_grand_canyon.jpg'),
('Yosemite', 37.873575066875745, -119.54840070709253, 'http://shallow.codes/images_CR12/loc02_yosemite.jpg'),
('Yellowstone', 44.47091626420048, -110.60502608313007, 'http://shallow.codes/images_CR12/loc03_yellowstone.jpg'),
('Maui', 20.821489885834872, -156.32948070152685, 'http://shallow.codes/images_CR12/loc04_maui.jpg'),
('Glacier National Park', 48.7658261806736, -113.797820797297, 'http://shallow.codes/images_CR12/loc05_glacier_national_park.jpg'),
('New York City', 40.78516597560759, -73.97066018369479, 'http://shallow.codes/images_CR12/loc06_new_york_city.jpg'),
('San Francisco', 37.77791925797439, -122.41331728191315, 'http://shallow.codes/images_CR12/loc07_san_francisco.jpg'),
('New Orleans', 29.986665488662695, -90.11406706000491, 'http://shallow.codes/images_CR12/loc08_new_orleans.jpg'),
('Honolulu - Oahu', 21.34470041396861, -157.86814733164968, 'http://shallow.codes/images_CR12/loc09_honolulu_oahu.jpg'),
('Zion National Park', 37.28972678794037, -113.02619097352179, 'http://shallow.codes/images_CR12/loc10_zion_national_park.jpg'),
('Grand Teton National Park', 43.7957204623226, -110.64099897071905, 'http://shallow.codes/images_CR12/loc11_grand_teton_national_park.jpg'),
('Washington D.C.', 38.94886896319399, -77.05302462988006, 'http://shallow.codes/images_CR12/loc12_washington_DC.jpg'),
('Moab', 38.59662947876731, -109.55091794107302, 'http://shallow.codes/images_CR12/loc13_moab.jpg'),
('Lake Tahoe', 39.10817094143398, -120.02849841812974, 'http://shallow.codes/images_CR12/loc14_lake_tahoe.jpg'),
('Bar Harbor', 44.3865952199345, -68.19883715602417, 'http://shallow.codes/images_CR12/loc15_bar_harbor.jpg'),
('Kauai', 22.11222467878571, -159.52779257419255, 'http://shallow.codes/images_CR12/loc16_kauai.jpg'),
('San Diego', 32.71453871705458, -117.18317581494316, 'http://shallow.codes/images_CR12/loc17_san_diego.jpg'),
('Jackson Hole', 43.49007603858515, -110.75959328760086, 'http://shallow.codes/images_CR12/loc18_jackson_hole.jpg'),
('Boston', 42.36151512866298, -71.05127988737712, 'http://shallow.codes/images_CR12/loc19_boston.jpg'),
('Big Sur', 36.27479123256241, -121.80898815597979, 'http://shallow.codes/images_CR12/loc20_big_sur.jpg'),
('Chicago', 41.91974227495192, -87.6231211090291, 'http://shallow.codes/images_CR12/loc21_chicago.jpg'),
('Aspen', 39.2237946596566, -106.80614070432905, 'http://shallow.codes/images_CR12/loc22_aspen.jpg'),
('Seattle', 47.60831365052479, -122.34619246758842, 'http://shallow.codes/images_CR12/loc23_seattle.jpg'),
('Miami', 25.762294476251693, -80.19306886528955, 'http://shallow.codes/images_CR12/loc24_miami.jpg'),
('Sedona', 34.87150352796626, -111.76633950890704, 'http://shallow.codes/images_CR12/loc25_sedona.jpg'),
('Las Vegas', 36.11381362353569, -115.179050802427, 'http://shallow.codes/images_CR12/loc26_las_vegas.jpg'),
('Charleston, SC', 32.79083245988531, -79.89347510788339, 'http://shallow.codes/images_CR12/loc27_charleston_SC.jpg'),
('Steamboat Springs', 40.51170353106822, -106.83311489405541, 'http://shallow.codes/images_CR12/loc28_steamboat_springs.jpg'),
('Key West', 24.55519207797936, -81.78140069184802, 'http://shallow.codes/images_CR12/loc29_key_west.jpg'),
('Telluride', 37.93675188114693, -107.8122100893559, 'http://shallow.codes/images_CR12/loc30_telluride.jpg'),
('Monterey', 36.642090330669454, -121.90627623758273, 'http://shallow.codes/images_CR12/loc31_monterey.jpg'),
('Outer Banks', 35.571078100532134, -75.46468069520162, 'http://shallow.codes/images_CR12/loc32_outer_banks.jpg'),
('Denver', 39.77845901793831, -104.95461232567891, 'http://shallow.codes/images_CR12/loc33_denver.jpg'),
('Hilton Head', 32.26078248940459, -80.7435889157485, 'http://shallow.codes/images_CR12/loc34_hilton_head.jpg'),
('Savannah', 32.07950140872799, -81.09454507333017, 'http://shallow.codes/images_CR12/loc35_savannah.jpg'),
('Portland, OR', 45.50799073073046, -122.67493484750297, 'http://shallow.codes/images_CR12/loc36_portland_OR.jpg'),
('Adirondacks', 44.21065077711462, -73.88658935132422, 'http://shallow.codes/images_CR12/loc37_adirondacks.jpg'),
('Santa Fee', 36.02907331827065, -106.07273125783792, 'http://shallow.codes/images_CR12/loc38_santa_fe.jpg');










