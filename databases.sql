CREATE TABLE IF NOT EXISTS `places`(
   id INT(11) NOT NULL AUTO_INCREMENT,
   place CHAR(30) NOT NULL,
   start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
   end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
   PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp),
   PRIMARY KEY (id)
) WITH SYSTEM VERSIONING;

INSERT INTO `places` (`id`, `place`) VALUES (NULL, 'Buikwe'), (NULL, 'Bukomansimbi'), (NULL, 'Butambala'), (NULL, 'Buvuma'), (NULL, 'Gomba'), (NULL, 'Kalangala'), (NULL, 'Kalungu'), (NULL, 'Kampala'), (NULL, 'Kayunga'), (NULL, 'Kiboga'), (NULL, 'Kyankwanzi'), (NULL, 'Luweero'), (NULL, 'Lwengo'), (NULL, 'Lyantonde'), (NULL, 'Masaka'), (NULL, 'Mityana'), (NULL, 'Mpigi'), (NULL, 'Mubende'), (NULL, 'Mukono'), (NULL, 'Nakaseke'), (NULL, 'Nakasongola'), (NULL, 'Rakai'), (NULL, 'Sembabule'), (NULL, 'Wakiso');
INSERT INTO `places` (`id`, `place`) VALUES (NULL, 'Amuria'), (NULL, 'Budaka'), (NULL, 'Bududa'), (NULL, 'Bugiri'), (NULL, 'Bukedea'), (NULL, 'Bukwa'), (NULL, 'Bulambuli'), (NULL, 'Busia'), (NULL, 'Butaleja'), (NULL, 'Buyende'), (NULL, 'Iganga'), (NULL, 'Jinja'), (NULL, 'Kaberamaido'), (NULL, 'Kaliro'), (NULL, 'Kamuli'), (NULL, 'Kapchorwa'), (NULL, 'Katakwi'), (NULL, 'Kibuku'), (NULL, 'Kumi'), (NULL, 'Kween'), (NULL, 'Luuka'), (NULL, 'Manafwa'), (NULL, 'Mayuge'), (NULL, 'Mbale'), (NULL, 'Namayingo'), (NULL, 'Namutumba'), (NULL, 'Ngora'), (NULL, 'Pallisa'), (NULL, 'Serere'), (NULL, 'Sironko'), (NULL, 'Soroti'), (NULL, 'Tororo');
INSERT INTO `places` (`id`, `place`) VALUES (NULL, 'Abim'), (NULL, 'Adjumani'), (NULL, 'Agago'), (NULL, 'Alebtong'), (NULL, 'Amolatar'), (NULL, 'Amudat'), (NULL, 'Amuru'), (NULL, 'Apac'), (NULL, 'Arua'), (NULL, 'Dokolo'), (NULL, 'Gulu'), (NULL, 'Kaabong'), (NULL, 'Kitgum'), (NULL, 'Koboko'), (NULL, 'Kole'), (NULL, 'Kotido'), (NULL, 'Lamwo'), (NULL, 'Lira'), (NULL, 'Maracha'), (NULL, 'Moroto'), (NULL, 'Moyo'), (NULL, 'Nakapiripirit'), (NULL, 'Napak'), (NULL, 'Nebbi'), (NULL, 'Nwoya'), (NULL, 'Otuke'), (NULL, 'Oyam'), (NULL, 'Pader'), (NULL, 'Yumbe'), (NULL, 'Zombo');
INSERT INTO `places` (`id`, `place`) VALUES (NULL, 'Buhweju'), (NULL, 'Buliisa'), (NULL, 'Bundibugyo'), (NULL, 'Bushenyi'), (NULL, 'Hoima'), (NULL, 'Ibanda'), (NULL, 'Isingiro'), (NULL, 'Kabale'), (NULL, 'Kabarole'), (NULL, 'Kamwenge'), (NULL, 'Kanungu'), (NULL, 'Kasese'), (NULL, 'Kibaale'), (NULL, 'Kiruhura'), (NULL, 'Kiryandongo'), (NULL, 'Kisoro'), (NULL, 'Kyegegwa'), (NULL, 'Kyenjojo'), (NULL, 'Masindi'), (NULL, 'Mbarara'), (NULL, 'Mitooma'), (NULL, 'Ntoroko'), (NULL, 'Ntungamo'), (NULL, 'Rubirizi'), (NULL, 'Rukungiri'), (NULL, 'Sheema');

CREATE TABLE IF NOT EXISTS `regions`(
   id INT(11) NOT NULL AUTO_INCREMENT,
   region CHAR(30) NOT NULL,
   start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
   end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
   PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp),
   PRIMARY KEY (id)
) WITH SYSTEM VERSIONING;

INSERT INTO `regions` (`id`, `region`) VALUES (NULL, 'Central'), (NULL, 'Eastern'), (NULL, 'Northern'), (NULL, 'Western');

CREATE TABLE IF NOT EXISTS `place_regions` (
   id INT(11) NOT NULL AUTO_INCREMENT,
   place_id int(11) NOT NULL,
   region_id int(11) NOT NULL,
   start_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW START,
   end_timestamp TIMESTAMP(6) GENERATED ALWAYS AS ROW END,
   PERIOD FOR SYSTEM_TIME(start_timestamp, end_timestamp),
   PRIMARY KEY (id),
   FOREIGN KEY (place_id) REFERENCES places(id),
   FOREIGN KEY (region_id) REFERENCES regions(id)
) WITH SYSTEM VERSIONING;

INSERT INTO `place_regions` (`id`, `place_id`, `region_id`) VALUES (NULL, '1', '1'), (NULL, '2', '1'), (NULL, '3', '1'), (NULL, '4', '1'), (NULL, '5', '1'), (NULL, '6', '1'), (NULL, '7', '1'), (NULL, '8', '1'), (NULL, '9', '1'), (NULL, '10', '1'), (NULL, '11', '1'), (NULL, '12', '1'), (NULL, '13', '1'), (NULL, '14', '1'), (NULL, '15', '1'), (NULL, '16', '1'), (NULL, '17', '1'), (NULL, '18', '1'), (NULL, '19', '1'), (NULL, '20', '1'), (NULL, '21', '1'), (NULL, '22', '1'), (NULL, '23', '1'), (NULL, '24', '1');
INSERT INTO `place_regions` (`id`, `place_id`, `region_id`) VALUES (NULL, '25', '2'), (NULL, '26', '2'), (NULL, '27', '2'), (NULL, '28', '2'), (NULL, '29', '2'), (NULL, '30', '2'), (NULL, '31', '2'), (NULL, '32', '2'), (NULL, '33', '2'), (NULL, '34', '2'), (NULL, '35', '2'), (NULL, '36', '2'), (NULL, '37', '2'), (NULL, '38', '2'), (NULL, '39', '2'), (NULL, '40', '2'), (NULL, '41', '2'), (NULL, '42', '2'), (NULL, '43', '2'), (NULL, '44', '2'), (NULL, '45', '2'), (NULL, '46', '2'), (NULL, '47', '2'), (NULL, '48', '2'), (NULL, '49', '2'), (NULL, '50', '2'), (NULL, '51', '2'), (NULL, '52', '2'), (NULL, '53', '2'), (NULL, '54', '2'), (NULL, '55', '2'), (NULL, '56', '2');
INSERT INTO `place_regions` (`id`, `place_id`, `region_id`) VALUES (NULL, '57', '3'), (NULL, '58', '3'), (NULL, '59', '3'), (NULL, '60', '3'), (NULL, '61', '3'), (NULL, '62', '3'), (NULL, '63', '3'), (NULL, '64', '3'), (NULL, '65', '3'), (NULL, '66', '3'), (NULL, '67', '3'), (NULL, '68', '3'), (NULL, '69', '3'), (NULL, '70', '3'), (NULL, '71', '3'), (NULL, '72', '3'), (NULL, '73', '3'), (NULL, '74', '3'), (NULL, '75', '3'), (NULL, '76', '3'), (NULL, '77', '3'), (NULL, '78', '3'), (NULL, '79', '3'), (NULL, '80', '3'), (NULL, '81', '3'), (NULL, '82', '3'), (NULL, '83', '3'), (NULL, '84', '3'), (NULL, '85', '3'), (NULL, '86', '3');
INSERT INTO `place_regions` (`id`, `place_id`, `region_id`) VALUES (NULL, '87', '4'), (NULL, '88', '4'), (NULL, '89', '4'), (NULL, '90', '4'), (NULL, '91', '4'), (NULL, '92', '4'), (NULL, '93', '4'), (NULL, '94', '4'), (NULL, '95', '4'), (NULL, '96', '4'), (NULL, '97', '4'), (NULL, '98', '4'), (NULL, '99', '4'), (NULL, '100', '4'), (NULL, '101', '4'), (NULL, '102', '4'), (NULL, '103', '4'), (NULL, '104', '4'), (NULL, '105', '4'), (NULL, '106', '4'), (NULL, '107', '4'), (NULL, '108', '4'), (NULL, '109', '4'), (NULL, '110', '4'), (NULL, '111', '4'), (NULL, '112', '4');