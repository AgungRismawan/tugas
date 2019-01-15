c:
cd /xampp/mysql/bin
mysql -uroot -p -P3306 -hlocalhost;

CREATE TABLE `laporan` (
  `noid` int(5) NOT NULL AUTO_INCREMENT,
  `kodos` varchar(10) NOT NULL,
  `nama_dosen` varchar(10) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `time` time NOT NULL,
  `matkul` varchar(10) NOT NULL,
  `paraf` tinytext,
  PRIMARY KEY (`noid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `laporan` VALUES (6,'020296','ari ramdan','1996-02-02','14:02:00','NGOPI','KECE BANGET');

exit
